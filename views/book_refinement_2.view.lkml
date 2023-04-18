include: "book.view"

view: +book {
  dimension: issue_date_3 {
    type: string
    sql: ${TABLE}."date" ;;
  }
}
