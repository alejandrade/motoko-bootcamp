import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'AssociationExists' : (arg_0: string) => Promise<boolean>,
  'associate' : (arg_0: bigint, arg_1: string) => Promise<bigint>,
  'nftAssociated' : (arg_0: bigint) => Promise<boolean>,
}
