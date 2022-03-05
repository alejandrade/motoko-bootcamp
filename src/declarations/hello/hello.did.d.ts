import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'list' : () => Promise<Array<string>>,
  'lookup' : (arg_0: string) => Promise<[] | [bigint]>,
  'register' : (arg_0: string) => Promise<undefined>,
}
