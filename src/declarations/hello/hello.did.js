export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'list' : IDL.Func([], [IDL.Vec(IDL.Text)], []),
    'lookup' : IDL.Func([IDL.Text], [IDL.Opt(IDL.Nat)], []),
    'register' : IDL.Func([IDL.Text], [], []),
  });
};
export const init = ({ IDL }) => { return []; };
