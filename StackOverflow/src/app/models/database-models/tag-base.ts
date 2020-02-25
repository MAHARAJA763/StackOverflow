import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class TagBase {

//#region tagId Prop
        @prop()
        tagId : number;
//#endregion tagId Prop


//#region tagName Prop
        @required()
        @maxLength({value:50})
        tagName : string;
//#endregion tagName Prop


//#region tagDetail Prop
        @required()
        tagDetail : string;
//#endregion tagDetail Prop



}