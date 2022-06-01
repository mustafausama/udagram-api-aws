aws s3 cp --recursive --acl public-read ./www s3://uda-gram-buck/ --cache-control="max-age=0, no-cache, no-store, must-revalidate"
