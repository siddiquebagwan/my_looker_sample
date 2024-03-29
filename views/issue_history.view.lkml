include: "book.view"

view: issue_history {
  sql_table_name: public.issue_history ;;

  dimension: book_name {
    type: string
    sql: ${TABLE}."book_name" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."user_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [book_name, user_name]
  }
}
