export MONGODB_URI="mongodb://34.148.54.192:27017"
cargo build
flamegraph -o my_flamegraph.svg -- /Users/quipperindonesia/Documents/private/code/learning-rust/ingestion-tools/target/debug/ingestion-tools --database kotekaman  --collection enrollments --prefix-output-file result --batch-size-in-mb 10