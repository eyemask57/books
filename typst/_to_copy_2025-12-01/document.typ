#import "_functions.typ": * // 共通関数読み込み
#import "_settings.typ": config // 共通設定読み込み

#import "@preview/cetz:0.4.2": * // tikzライクな図形描画
// https://typst.app/universe/package/cetz/

#import "@preview/equate:0.3.2": equate // 数式番号付与
#show: equate.with(breakable: true, sub-numbering: true, number-mode: "label")
#set math.equation(numbering: "(1.a)")
// https://typst.app/universe/package/equate/
#import "@preview/quick-maths:0.2.1": shorthands // 数式記法補助
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($-+$, $minus.plus$),
  ($-||-$, math.tack.l.r),
  ($||-$, math.forces),
  ($||+$, math.forces.not),
  ($|=$, math.tack.r.double),
  ($=|$, math.tack.l.double),
  ($|++$, math.tack.r.double.not),
  ($|-$, math.tack),
  ($-|$, math.tack.l),
  ($|+$, math.tack.not),
  ($=<$, math.lt.eq),
  ($<=$, math.arrow.l.double),
  ($..c$, math.dots.h.c),
  ($.c$, math.dot.op),
  ($..v$, math.dots.v),
  ($..d$, math.dots.down),
  ($..u$, math.dots.up),
  ($~~$, math.approx),
  ($h-$, math.planck),
)
// https://typst.app/universe/package/quick-maths/

#import "@preview/thmbox:0.3.0": * //定理環境
#show: thmbox-init()
// https://typst.app/universe/package/thmbox/
#import "@preview/frame-it:1.2.0": * // フレーム付きボックス
#let (example, feature, variant, syntax) = frames(
  feature: ("Feature",),
  // For each frame kind, you have to provide its supplement title to be displayed
  variant: ("Variant",),
  // You can provide a color or leave it out and it will be generated
  example: ("Example", gray),
  // You can add as many as you want
  syntax: ("Syntax",),
)
// This is necessary. Don't forget this!
#show: frame-style(styles.boxy)
// https://typst.app/universe/package/frame-it/
#import "@preview/gentle-clues:1.2.0": * //info が書きやすい
// https://typst.app/universe/package/gentle-clues/

#import "@preview/commute:0.3.0": arr, commutative-diagram, node // 可換図式
// https://typst.app/universe/package/commute/
#import "@preview/curryst:0.6.0": prooftree, rule, rule-set // 自然演繹記法
// https://typst.app/universe/package/curryst/

#import "@preview/unify:0.7.1": num, numrange, qty, qtyrange // si記法
// https://typst.app/universe/package/unify/
#import "@preview/physica:0.9.7": * // 物理記法
// https://github.com/Leedehai/typst-physics/blob/master/physica-manual.pdf
#import "@preview/quill:0.7.2": * // 量子ビット記法
// https://typst.app/universe/package/quill/

#import "@preview/alchemist:0.1.8": * // 有機化学構造式
// https://typst.app/universe/package/alchemist/
#import "@preview/drafting:0.2.2": * // commentを付けたりできる
// https://typst.app/universe/package/drafting/
#import "@preview/codly:1.3.0": * // ソースコード表示
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
// https://typst.app/universe/package/codly/
#import "@preview/tiaoma:0.3.0": * //バーコード生成
// https://typst.app/universe/package/tiaoma/
#import "@preview/lilaq:0.5.0" as lq //表作成補助
// https://lilaq.org/
#import "@preview/finite:0.5.0": automaton // 有限オートマトン
// https://github.com/jneug/typst-finite
#import "@preview/cjk-spacer:0.1.0": cjk-spacer // 日本語の単語間スペース調整
// https://typst.app/universe/package/cjk-spacer/
#show: cjk-spacer

#show: config.with(
  maintitle: "title here",
  //  subtitle: "subtitle",
  author: ("eyemask57",),
  //  author-en:(),
  //  date: none,
  //  date: datetime(year: 2026, month: 1, day: 1),
  //  language: "en",
  //  page-numbering: false,
  //  first-page-numbering: false,
  //  l-header: ["koko"],
  //  r-header: ["soko"],
  /*  l-header: context{
        let headings = query(
          heading.where(level: 1).before(here()),
        )
        if headings.len() > 0 {
          let current = headings.last()
          emph(current.body)
        }
    },
  */
  /*  r-header: context{
        let headings = query(
          heading.where(level: 2).before(here()),
        )
        if headings.len() > 0 {
          let current = headings.last()
          emph(current.body)
        }
    },
  */
  //  first-page-header: false,
  //  keywords: ("",),
  //  discription: [],
  //  title-stile: 2,
)

//#outline(title: "目次", depth: 2, indent: auto)

