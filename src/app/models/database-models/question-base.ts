import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class QuestionBase {

//#region questionId Prop
        @prop()
        questionId : number;
//#endregion questionId Prop


//#region questionTitle Prop
        @required()
        questionTitle : string;
//#endregion questionTitle Prop


//#region questionBody Prop
        @required()
        questionBody : string;
//#endregion questionBody Prop


//#region questionDateTime Prop
        @required()
        questionDateTime : any;
//#endregion questionDateTime Prop


//#region questionAuthorId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        questionAuthorId : number;
//#endregion questionAuthorId Prop









}