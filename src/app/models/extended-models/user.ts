import {UserBase} from '../database-models/user-base';
import {QuestionBase} from '../database-models/question-base';
import {ReputationBase} from '../database-models/reputation-base';
import {ScoreBase} from '../database-models/score-base';
import {AnswerBase} from '../database-models/answer-base';
import {UserPrivilegeBase} from '../database-models/user-privilege-base';
//Generated Imports
export class User extends UserBase 
{




//#region Generated Reference Properties
//#region questions Prop
questions : QuestionBase[];
//#endregion questions Prop
//#region reputations Prop
reputations : ReputationBase[];
//#endregion reputations Prop
//#region scores Prop
scores : ScoreBase[];
//#endregion scores Prop
//#region answers Prop
answers : AnswerBase[];
//#endregion answers Prop
//#region userPrivileges Prop
userPrivileges : UserPrivilegeBase[];
//#endregion userPrivileges Prop

//#endregion Generated Reference Properties



}