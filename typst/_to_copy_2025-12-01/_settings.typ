#let config(
  maintitle: "",
  subtitle: "",
  author: (),
  date: auto,
  language: "ja",
  page-numbering: true,
  first-page-numbering: true,
  l-header: "",
  r-header: "",
  first-page-header: true,
  keywords: (),
  discription: [],
  title-stile: 1,
  body,
) = {
  set document(
    title: maintitle,
    author: author,
    date: date,
    keywords: keywords,
  )
  // フォント設定
  set text(
    font: ("Times New Roman", "Yu Mincho"),
    lang: language,
    size: 10.5pt,
  )

  // ページレイアウト
  set page(
    paper: "a4",
    margin: (
      x: 25mm,
      y: 25mm,
    ),
    numbering: "1",
    header: context {
      // headerが書かれていない場合は出力されないようにしてある．
      if ((counter(page).get().first() > 1 or first-page-header) and not (l-header == "" and r-header == "")) [
        #set text(size: 8pt)
        #grid(
          columns: (1fr, 1fr),
          align: (left, right),
          [#l-header], [#r-header],
        )
        #line(length: 100%, stroke: 0.5pt)
      ]
    },
    footer: context {
      // footerはページ番号のみ出力されるようにしてある．
      if (counter(page).get().first() > 1 or first-page-numbering) and page-numbering [
        #set text(size: 9pt)
        #set align(center)
        -- #context { counter(page).display() } --
      ]
    },
  )

  // 段落スタイル
  set par(
    leading: 0.8em,
    justify: language == "ja",
    linebreaks: auto,
    first-line-indent: 1em,
    hanging-indent: 0em,
  )

  set heading(
    numbering: "1.",
  )
  show heading: set text(font: ("Arial", "Yu Gothic"))
  show strong: set text(font: ("Arial", "Yu Gothic"))
  show heading: it => {
    it
    par(text(size: 0pt, ""))
  }

  // 本文を表示
  context {
    if title-stile != 0 [
      #set align(center)
      #show maintitle: set text(2em)
      #if title-stile == 2 [
        #set align(horizon)
        #maintitle \
      ] else [
        #maintitle \
      ]

      #if subtitle != "" [
        #show subtitle: set text(1.5em)
        #subtitle\
      ]

      #for i in author [
        #i
        #if i != author.last() [
          ,
        ]
      ]

      #if not (date == auto or date == none) [
        #date.display()
      ] else if date == auto [
        #datetime.today().display()
      ]
      #if title-stile == 2 [#pagebreak()]
    ]
  }
  body
}
