import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class QuestionVoteBase {

//#region questionVoteId Prop
        @prop()
        questionVoteId : number;
//#endregion questionVoteId Prop


//#region questionUpVote Prop
        @prop()
        questionUpVote : number;
//#endregion questionUpVote Prop


//#region questionDownVote Prop
        @prop()
        questionDownVote : number;
//#endregion questionDownVote Prop


//#region questionId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        questionId : number;
//#endregion questionId Prop



}