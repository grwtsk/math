# Verification target: Partrec Code Pair Prim

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95d5c55f26b17c9c406904ac60a0b4aa61f8ee85",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95d5c55f26b17c9c406904ac60a0b4aa61f8ee85`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Partrec` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rfind'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/rfind.md) | 50 | `result-track:835f2fd874de7701093a8da16a699a9124a67d0f622f09853f267849e717e4c9` |
| 2 | `inductive` | [Code](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/code.md) | 76 | `declaration-track:acdbe5807f9613f38f643f4fc97cae09e8e9beac40f8e57d1f734c5980eacdd8` |
| 3 | `instance` | [instInhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/instinhabited.md) | 98 | `declaration-track:71cf285164870161eebe17f46aad094a20f62310a03ed0ba5161a5bc7c769fca` |
| 4 | `def` | [const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/const.md) | 103 | `declaration-track:bedc0e63c15cbe72d7a71a108d489dbde3297a44855e003271c8a59cf8614aa5` |
| 5 | `theorem` | [const_inj](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/const-inj.md) | 108 | `result-track:0172e43eb78a17933b049de2491e57274eb928bb93d8ec54ac8924f50a882a64` |
| 6 | `def` | [id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/id.md) | 117 | `declaration-track:32e0a27938fccef9399c7fdac21a90d4ae3ddbe1e7c3da5f3b5cb3a034b1de42` |
| 7 | `def` | [curry](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/curry.md) | 123 | `declaration-track:c1f569b45efad33b3603bf56618d1cf16a67043b6ce8247350d4a20b75b3861e` |
| 8 | `def` | [encodeCode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/encodecode.md) | 129 | `declaration-track:a3a1983427a6021f6cb741f3b7a920fd877403189c92541e3011ffeaec225386` |
| 9 | `def` | [ofNatCode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/ofnatcode.md) | 143 | `declaration-track:3b079cfc60d87c9ab0b13a061be8258f75cb87cdb8992e11959c5ca46a88bb86` |
| 10 | `theorem` | [encode_ofNatCode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/encode-ofnatcode.md) | 165 | `result-track:62707e47d509ef1b212c880a5f6919c4fb6dd20455774bb98382c7a7f4c854b6` |
| 11 | `instance` | [instDenumerable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/instdenumerable.md) | 187 | `declaration-track:799c14713d5a5ac94560f5154771b7da6fabd5952b58f43a39b0c4318abeedbd` |
| 12 | `theorem` | [encodeCode_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/encodecode-eq.md) | 194 | `result-track:3e199ad06345a48a5738429306a67331ba11ba75bd77224ffa3a839845c06656` |
| 13 | `theorem` | [ofNatCode_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/ofnatcode-eq.md) | 198 | `result-track:54728a11774c24611a406377b5dbea7db23bd71105fa469e98ebd68f9def9154` |
| 14 | `theorem` | [encode_lt_pair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/encode-lt-pair.md) | 202 | `result-track:dc292e0e9f3801ba53b04583bdb3720546e190d84a48827dec4b8f2d86ced2ff` |
| 15 | `theorem` | [encode_lt_comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/encode-lt-comp.md) | 211 | `result-track:cfd61169eba3d16582a3ee62b8c0f646d7ad2314de809c566760d02b492a3512` |
| 16 | `theorem` | [encode_lt_prec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/encode-lt-prec.md) | 217 | `result-track:1b7106ee86ac4b0e70fc57615c16f7bb26210d26c248f4803771a2efcc44c8a0` |
| 17 | `theorem` | [encode_lt_rfind'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/encode-lt-rfind.md) | 223 | `result-track:633f1c5993df2229486b1c8775faf869b4d0bc1a8d4082f825d968d81acb6712` |
| 18 | `theorem` | [pair_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/pair-prim.md) | 234 | `result-track:879751e3a37cded80d9035f71b7ec7b5ff95f4f886b92436ec5fa76fdac5fdd1` |
| 19 | `theorem` | [comp_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/comp-prim.md) | 245 | `result-track:fbf5fe5514d4486482bc5a7f9ec2f752e960a55854a43e0f5d749ecb5c1ad2db` |
| 20 | `theorem` | [prec_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/prec-prim.md) | 256 | `result-track:586eb746b85943d509cc1d4198701a6fa1f1e4150364b18bc96fad0c83721e2e` |
| 21 | `theorem` | [rfind_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/rfind-prim.md) | 267 | `result-track:914159b2307ad30e770b3503de0b28f85c1656172a85734a528c95b1b0f8cb9b` |
| 22 | `theorem` | [rec_prim'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/rec-prim-source-edition-2.md) | 276 | `result-track:e27bd1d89800f3758e3d8aac454a118c8e5b1e000a870e30ff6d9db217a5228c` |
| 23 | `theorem` | [rec_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/rec-prim.md) | 386 | `result-track:b0314b56164181db3df5e5616c83edab00323a0ae2ad7f3f70254d960fd64a1a` |
| 24 | `theorem` | [rec_computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/rec-computable.md) | 499 | `result-track:56d636b45005e67e3d380b95a82e080b84942752fc62c9b3965356270404baaf` |
| 25 | `def` | [eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/eval.md) | 620 | `declaration-track:451d8aa5bf4d55368d92ec86abf06d37ac72670794d0d570165a246ab5d40aeb` |
| 26 | `theorem` | [eval_prec_zero](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/eval-prec-zero.md) | 639 | `result-track:77930f555964a4e32bfcbbc045de73ae081273f4079ea49d4fe62d02e9ca9484` |
| 27 | `theorem` | [eval_prec_succ](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/eval-prec-succ.md) | 646 | `result-track:10228423911b99a14cf4ffb8567afede3551a7a834e8a137eea691efa16be0be` |
| 28 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/instance.md) | 653 | `declaration-track:60ba2de37819be2276e4e117233f8628319f5567800a4f182e3f229d0246e289` |
| 29 | `theorem` | [eval_const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/eval-const.md) | 657 | `result-track:f5abb942a50c4abb40cc3b5e89fbb87f31f7842e868fd67ebd5b573db71a8dcf` |
| 30 | `theorem` | [eval_id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/eval-id.md) | 663 | `result-track:7629957cadfeba8322f97487b24ca1a4f6e44a1538a2a22cac39f432e0a8a25b` |
| 31 | `theorem` | [eval_curry](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/eval-curry.md) | 667 | `result-track:61ebd5b0a92d1c3feead1508408bcd05b2963ad2b4bdcc0f5f3fd0327f8ad05c` |
| 32 | `theorem` | [const_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/const-prim.md) | 670 | `result-track:c965df075ef6a1b83100a510da69df44f146ac459013b64dc54cb598e2d84c0b` |
| 33 | `theorem` | [curry_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/curry-prim.md) | 677 | `result-track:6631c4bd59f57f48199c6eacfbd5705b9a673f9b9da38eed3c5d2bf8a459e575` |
| 34 | `theorem` | [curry_inj](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/curry-inj.md) | 682 | `result-track:38a6afd946e6eaf942194ca39e3501f176bbe29c748860fef290405a93bff18e` |
| 35 | `theorem` | [smn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/smn.md) | 693 | `result-track:c93116b5d4a1f05115be17b60ae6aba790cfebc4e0fe5575bc502f256d777fa0` |
| 36 | `theorem` | [exists_code](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/exists-code.md) | 699 | `result-track:a2b3f6e85d8b0764ff5d34d966de83717e22c87a58a974b86d6327147bee6784` |
| 37 | `def` | [evaln](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/evaln.md) | 736 | `declaration-track:0955fc0a8249a7535adcd376fc1e08cd0f6c2bbf958726d939516d00a64694ec` |
| 38 | `theorem` | [evaln_bound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/evaln-bound.md) | 775 | `result-track:d08fe33d44ec70c689a27640aebec38c787ee929ad68fc079b9023752bf0a4a7` |
| 39 | `theorem` | [evaln_mono](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/evaln-mono.md) | 783 | `result-track:03a3e2094a80bc201326f06650dc9d22ecbf389d9b41a0ec092a7c15eda96791` |
| 40 | `theorem` | [evaln_sound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/evaln-sound.md) | 817 | `result-track:cc7748869fb70357354191de45549d3022af973c65002cfca7e4f7ea9f913dd2` |
| 41 | `theorem` | [evaln_complete](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/evaln-complete.md) | 857 | `result-track:161bac4d58a6f774a867cd43afc3c177cc786b8863b48f054e66c61912cd2284` |
| 42 | `def` | [lup](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/lup.md) | 929 | `declaration-track:cd5f1824d61a3998f634339529860ce67c8f676ee61367b0ddc46f35bc53f6ce` |
| 43 | `theorem` | [hlup](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/hlup.md) | 934 | `result-track:dbad1923bcadf938361536889e0c03806364359b61a30c4834b2d3e0e2d29936` |
| 44 | `def` | [G](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/g.md) | 940 | `declaration-track:86f66f0f7130893df7bb5f4f49e2d7c82fc9fbaf159c411107e80cb7d48fd936` |
| 45 | `theorem` | [hG](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/hg.md) | 971 | `result-track:2d7213c480aaa576aca1dee481efc48b299cfc06a15329abf86bb19be1fecfe7` |
| 46 | `theorem` | [evaln_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/evaln-map.md) | 1073 | `result-track:720102c7e9a2430b3606c06cbf928238f1d5ec722319a52625c8480fe181912f` |
| 47 | `theorem` | [evaln_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/evaln-prim.md) | 1084 | `result-track:aaccc0c0e2a9e98b4abd99a9a88952122d491303a00794ecbc13fc716bff28b1` |
| 48 | `theorem` | [eval_eq_rfindOpt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/eval-eq-rfindopt.md) | 1152 | `result-track:fcf0dbeae00196da5c49c05852ebf4e80d00b9173cca0f265e06c50d5d94a376` |
| 49 | `theorem` | [eval_part](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/eval-part.md) | 1158 | `result-track:0515442eeafb2a957535b75fca2946452c87511299516db8498d4b41198425e1` |
| 50 | `theorem` | [fixed_point](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/fixed-point-source-edition-2.md) | 1168 | `result-track:7f8fe682e52b9a04dcd1c9bea4e7a70752d8a3d84f34a3575dba9152e73f9f83` |
| 51 | `theorem` | [fixed_point₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/declarations/fixed-point.md) | 1186 | `result-track:47c05f4144c657ce52e481dc07dd9bc03d7ee31998d073e968afa9a6a28dc680` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7830a42ac419524d98d82f5e64cd31c266cfd3e6361f9677c54ac6cf30cf870c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
