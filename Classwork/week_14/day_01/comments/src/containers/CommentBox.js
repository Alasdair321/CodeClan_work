import React, {Component} from "react";
import CommentList from '../components/CommentList';

class CommentBox extends Component{

    constructor(props){
        super(props);
        this.state = {
            data: [
                {
                    id: 1,
                    author: "Alasdair",
                    text: "Learning about React"
                },{
                    id: 2,
                    author: "Alasdair",
                    text: "Learning about React again"
                },{
                    id: 3,
                    author: "Alasdair",
                    text: "Learning about React again more"
                }
            ]
        }
    }

    render(){
        return(
            <div className="comment-box">
                <h2>Comments</h2>
                <CommentList data={this.state.data}></CommentList>
            </div>
        )
    }
}

export default CommentBox;