import React, {Component} from "react";

export default class List extends Component{

    constructor(props){
        super(props);
        this.state = { 
            data: FILMS,
            upcoming: "https://www.imdb.com/calendar/?region=gb"
        }
    }

    render(){
        return(
            <div>
                <h1>Upcoming Film Releases for UK</h1>
                <ListItems items={this.state.data}/>
                <ViewMore url={this.state.upcoming}/>
            </div>
        )
    };
}

class ListItems extends Component{
    render(){

        const listNodes = this.props.items.map(item => {
            return (
                <ListItem title={item.name} key={item.id} url={item.url}/>
            )
        })

        return(
            <ul>
            {listNodes}
            </ul>
        )
    };
}

class ViewMore extends Component{
    render(){
        return(
            <a href={this.props.url} target="_blank">
            <h2>View More Upcoming Releases >></h2>
            </a>
        )
    }
}

class ListItem extends Component{
    render(){
        return(
            <a href={this.props.url} target="_blank">
                <li>{this.props.title}</li>
            </a>
        )
    };
}



const FILMS = [
    {
      id: 1,
      name: "Spider-Man: Into the Spider-Verse",
      url: "https://www.imdb.com/title/tt4633694/?ref_=rlm"
    },
    {
      id: 2,
      name: "Life Itself",
      url: "https://www.imdb.com/title/tt5989218/?ref_=rlm"
    },
    {
      id: 3,
      name: "Mary Queen of Scots",
      url: "https://www.imdb.com/title/tt2328900/?ref_=rlm"
    },
    {
      id: 4,
      name: "The Lego Movie 2: The Second Part", url: "https://www.imdb.com/title/tt3513498/?ref_=rlm"
    },
    {
      id: 5,
      name: "Captain Marvel",
      url: "https://www.imdb.com/title/tt4154664/?ref_=rlm"
    }
  ];