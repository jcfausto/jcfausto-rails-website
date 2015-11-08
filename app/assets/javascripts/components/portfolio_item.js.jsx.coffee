###
PortfolioItem React Component
Released under the MIT License
Date: 11-08-2015
Author: Julio Cesar Fausto
Source: https://github.com/jcfausto/jcfausto-com-rails
###

@PortfolioItem = React.createClass
  getInitialState: ->
    name: this.props.name
    url: this.props.url
    image_url: this.props.image_url
    order: this.props.order

  getImageUrl: ->
    image_path(this.state.image_url)

  render: ->
   `<div className="item">
      <a href={this.state.url} target="_blank">
        <img src={this.getImageUrl()} />
      </a>
      <footer>
        <span>
          <a href={this.state.url} target="_blank">{this.state.name}</a>
        </span>
      </footer>
    </div>`
