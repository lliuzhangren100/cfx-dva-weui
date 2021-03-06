import { prefixDom } from 'cfx.dom'

import WeuiPreviewTitle from './title'
import WeuiPreviewPayment from './payment'
import WeuiPreviewPayauxiliary from './payauxiliary'

CFX = prefixDom {
  default: {
    'div'
    'br'
  }
  WeuiPreviewTitle
  WeuiPreviewPayment
  WeuiPreviewPayauxiliary
}

export default ->

  {
    c_div
    c_br
    c_WeuiPreviewTitle
    c_WeuiPreviewPayment
    c_WeuiPreviewPayauxiliary
  } = CFX

  c_div
    className: [
      'page'
      'js_show'
    ].join ' '
  ,

    c_div
      className: 'page__hd'
    ,

      c_WeuiPreviewTitle {}

    c_div
      className: 'page__bd'
    ,

      c_WeuiPreviewPayment {}
      c_br {}
      c_WeuiPreviewPayauxiliary {}









