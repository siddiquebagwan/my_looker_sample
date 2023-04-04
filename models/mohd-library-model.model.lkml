connection: "gslab-aws-postgres-instance"

# include all the views
include: "/views/**/*.view"

datagroup: mohd-library-model_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mohd-library-model_default_datagroup

explore: book {}

explore: issue_history {}
