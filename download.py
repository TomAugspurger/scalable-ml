"""
Download taxi data from S3 to local
"""
from pathlib import Path
import sys
import argparse
import s3fs
from distributed import Client, wait


def parse_args(args=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('-s', '--scheduler', default=None,
                        help='Scheduler address')
    return parser.parse_args(args)


def fetch(key):
    fs = s3fs.S3FileSystem(anon=True)
    dest = Path('data').joinpath(Path(key).name)
    dest.parent.mkdir(exist_ok=True)
    fs.get(key, str(dest))
    return key


def main(args=None):
    args = parse_args(args)
    client = Client(args.scheduler)
    keys = [
        f'nyc-tlc/trip data/yellow_tripdata_2009-{m:0>2}.csv'
        for m in range(1, 13)
    ]
    results = client.map(fetch, keys)
    wait(results)


if __name__ == '__main__':
    sys.exit(main())
