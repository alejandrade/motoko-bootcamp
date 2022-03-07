export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'AssociationExists' : IDL.Func([IDL.Text], [IDL.Bool], []),
    'associate' : IDL.Func([IDL.Nat, IDL.Text], [IDL.Nat], []),
    'nftAssociated' : IDL.Func([IDL.Nat], [IDL.Bool], []),
  });
};
export const init = ({ IDL }) => { return []; };
