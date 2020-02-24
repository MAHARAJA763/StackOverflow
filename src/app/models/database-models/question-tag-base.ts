import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class QuestionTagBase {

//#region questionTagId Prop
        @prop()
        questionTagId : number;
//#endregion questionTagId Prop


//#region tagId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        tagId : number;
//#endregion tagId Prop


//#region questionId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        questionId : number;
//#endregion questionId Prop





}