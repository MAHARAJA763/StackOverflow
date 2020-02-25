import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class AnswerVoteBase {

//#region answerVoteId Prop
        @prop()
        answerVoteId : number;
//#endregion answerVoteId Prop


//#region answerUpVote Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        answerUpVote : number;
//#endregion answerUpVote Prop


//#region answerDownVote Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        answerDownVote : number;
//#endregion answerDownVote Prop


//#region answerId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        answerId : number;
//#endregion answerId Prop



}