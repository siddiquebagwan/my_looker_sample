connection: "gslab-aws-postgres-instance"

# include all the views
include: "/views/book.view"
include: "/views/issue_history.view"


view: +book {
  dimension: issue_date_2 {
    type: string
    sql: ${TABLE}."date" ;;
  }
}

view: +book {
  dimension: issue_date_4 {
    type: string
    sql: ${TABLE}."date" ;;
  }
}

explore: book_with_additional_properties {
  view_name: book
}

explore: issue_history {}
