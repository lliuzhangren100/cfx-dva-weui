import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'

CFX = prefixDom {
  'img'
}

class List_img extends React.Component

  render: () ->
    { c_img } = CFX
    { 
      kind
    } = @props
    
    c_img
      className: (
        do ->
          if kind is 'cell_link'
            [
              'weui-cell'
              'weui-cell_link'
            ]
          else if kind is 'tabbar__icon'
            [
              'weui-tabbar__icon'
            ]
          else if kind is 'vcode_img'
            [
              'weui-vcode-img'
            ]
          else 
            [
              ' '
            ]
      ).join ' '
      src: @props.src
      alt: @props.alt
      style: @props.style 
    , @props.children
  
export default List_img