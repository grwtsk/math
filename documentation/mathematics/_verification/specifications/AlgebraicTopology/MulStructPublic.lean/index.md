# Verification target: Mul Struct Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba170a2985400d9d1554ada3cc1904a074f7f9b9",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/MulStructPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/MulStructPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba170a2985400d9d1554ada3cc1904a074f7f9b9`.

Source path: `GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PtSimplex](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/ptsimplex.md) | 35 | `declaration-track:4f24ce69321906221649de9df71fa25fb41d44324e4c899990288105a248f5e9` |
| 2 | `def` | [equiv₀](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/equiv-source-edition-2.md) | 46 | `declaration-track:7cc5f1aeb3bfc5e5cee56444544dec97840a00bdef5ea6c81666064326fca857` |
| 3 | `lemma` | [map_eq_const_equiv₀](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/map-eq-const-equiv.md) | 52 | `result-track:489ee36e704932d90dd56c1f3ed900b9134b8a012721edbf6e85925a6e34a523` |
| 4 | `lemma` | [comp_map_eq_const](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/comp-map-eq-const.md) | 58 | `result-track:8de7f4fc15dfff19aab591ca440f0bdc941991e1baaa01199d6ec0190739dd9d` |
| 5 | `lemma` | [δ_map](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/map.md) | 69 | `result-track:0b2276d71dd2f66e20fbada627a901d2c41374a2c535376e0fb528b8f5033dae` |
| 6 | `def` | [opEquiv](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/opequiv.md) | 76 | `declaration-track:0d6e49a1f0c8b5ce0931ed24d5cf1ea7b7f098e3e5002882b110ef1181bb1a83` |
| 7 | `abbrev` | [op](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/op.md) | 100 | `declaration-track:19ab06db37d40f7022f5d67a82d5e58916ecce329d559fdca840e93e6b535b6a` |
| 8 | `abbrev` | [unop](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/unop-source-edition-2.md) | 105 | `declaration-track:c7d25d01c8386dd88798c24cca8a23f2aac236cc7583020087bd19cf680c52b3` |
| 9 | `structure` | [RelStruct](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/relstruct-source-edition-2.md) | 112 | `declaration-track:f3efe29b45e1cada93e100176054df660102a5292b7dba059a584c97068e0156` |
| 10 | `def` | [refl](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/refl.md) | 129 | `declaration-track:14d95d0df769c2afa54e1eb6a3d7169f828440f2e75761311eea840a6fec94d5` |
| 11 | `def` | [copy](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/copy.md) | 149 | `declaration-track:4c30c56967f01e240d6062040ca6d92dc62e4ebecab6c2d2b37c4e7ea251040b` |
| 12 | `def` | [ofEq](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/ofeq.md) | 160 | `declaration-track:71bd4b8642677eb1a3aaff87ff8ef3eb9d1a5834370d11d0aa13a2944bea8001` |
| 13 | `abbrev` | [RelStruct₀](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/relstruct.md) | 170 | `declaration-track:786e2d9485ec5df9134be162a139e650337e948da9a8b29da6d5246ddedc6a0c` |
| 14 | `def` | [equiv₀](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/equiv.md) | 177 | `declaration-track:74141d4168b77b14bf5f4e698afc27cc5e883d6ac9f33de49e3e312b4ad7485b` |
| 15 | `structure` | [MulStruct](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/mulstruct.md) | 202 | `declaration-track:86c5648b5effaba041477796f6e98bae47ffe79f570c1dc29f7c847bcb6c8291` |
| 16 | `def` | [op](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/op-source-edition-2.md) | 221 | `declaration-track:5864f3db942b446bd4996f881a9969c0d6fa9570ef42dba3ce2af34e2bf6a01f` |
| 17 | `def` | [unop](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/unop.md) | 246 | `declaration-track:baa7efebd8f36b9253df561be4903ab97af03539a301d8c4c592721df7605b51` |
| 18 | `def` | [relStructCastSuccEquivMulStruct](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/relstructcastsuccequivmulstruct.md) | 273 | `declaration-track:f3321398b7710cdb8c1fb91dfaf3038bf1babe05570deb92221048cd29506149` |
| 19 | `def` | [relStructSuccEquivMulStruct](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/relstructsuccequivmulstruct.md) | 288 | `declaration-track:0dfc19bbd24243a148c02d3c6e7fd9469571332c06cea3bd2fd2e7d3047fb0c8` |
| 20 | `def` | [oneMul](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/onemul.md) | 307 | `declaration-track:4cf604b81efcfe8834f81a5527948aab9e1305174785c52aa0be156e4b330b8c` |
| 21 | `def` | [mulOne](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/mulone.md) | 315 | `declaration-track:f078e1b782733a5cd6af377b7b50d2728e4e42a2284c19789879e1761924fd9a` |
| 22 | `def` | [α](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/anonymous.md) | 329 | `declaration-track:aac1903ba44b319caaa841687e651674dca4a585a3ec4f18542279feee3394d6` |
| 23 | `lemma` | [α_of_lt](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/of-lt.md) | 336 | `result-track:11f33b7547fc6b8620f04dfa7400bb5dec120b51b609513f75347303f4a937c4` |
| 24 | `lemma` | [α_of_gt](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/of-gt.md) | 341 | `result-track:d9db34a009a65cfc453181eeba272e20a20400a33c04dcc1f048fdf953ab4b21` |
| 25 | `lemma` | [α_castSucc_castSucc_castSucc](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/castsucc-castsucc-castsucc.md) | 347 | `result-track:4b00ac040674eaab092af6a32c74a783351fc2b0dfc9ed7cab429df8711ed832` |
| 26 | `lemma` | [α_castSucc_succ_succ](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/castsucc-succ-succ.md) | 352 | `result-track:8776550290fe92319a961816a063c1f4fdbd05a1763695ec5fbe88b143480002` |
| 27 | `lemma` | [α_succ_succ_succ](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/succ-succ-succ.md) | 358 | `result-track:8670b4ac48c51c44257cd0e19fdeaf440b0820afd36b0aeea07c761a8e8f6090` |
| 28 | `lemma` | [isCompatible_α](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/iscompatible.md) | 363 | `result-track:f529fd2776038536435dd398624d087cbb5f3c9030554db36920b61c2faeaa5d` |
| 29 | `def` | [assocAux](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/assocaux.md) | 415 | `declaration-track:85a007c2a9fd922b3a71c66e22f5602b91edf84e70085f057184802f0322fff9` |
| 30 | `def` | [assoc](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/assoc.md) | 448 | `declaration-track:f488b9e95888e87377a4cc51493ff88bba7a298aa3e42f6e2c6dc98b484ba356` |
| 31 | `def` | [assoc'](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/assoc-source-edition-2.md) | 461 | `declaration-track:ff5b0608f278ee91175d5f945ba52702ccdd257fb8398f860164a3ca65a97d93` |
| 32 | `def` | [mulOneEqSymm](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/muloneeqsymm.md) | 474 | `declaration-track:7d2c5d43711e940c51c5244e34c2d13227e521376aeb9ed685cc2edc43214a4a` |
| 33 | `def` | [oneMulEqSymm](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/onemuleqsymm.md) | 480 | `declaration-track:40eb2e371b9362f64a8afbba75bddc8dcc873ba6b6302b6e3dbbebfed81a5724` |
| 34 | `def` | [oneMulEqOfMulOneEq](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/onemuleqofmuloneeq.md) | 486 | `declaration-track:881974ab41873235891e27f925c5a313cba566090155674371056c8ff2fa1681` |
| 35 | `def` | [mulOneEqOfOneMulEq](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/muloneeqofonemuleq.md) | 492 | `declaration-track:1051483dc8c331109a8d9cb3286fde6403579c51427b0e88622a8d13435d9ab3` |
| 36 | `def` | [mulOneEqTrans](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/muloneeqtrans.md) | 499 | `declaration-track:8fe5bf146d9700d674afa81d1b10224b385db66211a276963e201a919f6e2966` |
| 37 | `def` | [oneMulEqTrans](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/onemuleqtrans.md) | 507 | `declaration-track:1e418e70a99de3d14e2c38a28b10248459c6a79ce09be0ffee88d08d0951c587` |
| 38 | `lemma` | [nonempty](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/nonempty.md) | 514 | `result-track:a43f56639f3123839fcac53c831f14a48ce9e33ee2554c664deebad6069e7b33` |
| 39 | `lemma` | [exists_left_inverse](../../../../AlgebraicTopology/MulStructPublic.lean/declarations/exists-left-inverse.md) | 537 | `result-track:5c7a5a14920869bb62c75c9ac2deea426ae471d9fdb06ccc91425f4eb9b436ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=764c466a8bbf99244d35f845c0d3d97bccfbd2f3315946462ed96203e04f7dcb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
