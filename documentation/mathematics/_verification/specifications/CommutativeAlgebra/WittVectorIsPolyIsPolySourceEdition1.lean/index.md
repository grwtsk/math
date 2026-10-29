# Verification target: Witt Vector Is Poly Is Poly Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a256e2854ccaba68bbee5f2d700f49acf7699ff0",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/index.md) · [Full source](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a256e2854ccaba68bbee5f2d700f49acf7699ff0`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Funext` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.ULift` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq'](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/poly-eq-of-wittpolynomial-bind-eq.md) | 112 | `result-track:b7433385cc430d22a274ea2ccf9f828f4fd26504c290a291b00d475d4255bfbe` |
| 2 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/poly-eq-of-wittpolynomial-bind-eq-source-edition-2.md) | 122 | `result-track:e9d8f8c74035b506b250a1c7533d9acfea6659bc26f35a96a56b2c4ff445081d` |
| 3 | `class` | [IsPoly](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/ispoly-source-edition-2.md) | 146 | `declaration-track:97c4dc7179135f76786305cf19ce7a76bb6af8178a3d39ad732a867aaeb53e9c` |
| 4 | `instance` | [idIsPoly](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/idispoly.md) | 152 | `declaration-track:0d87a2218ce6327d6126bb9c9b3e4e4ba7831526fdb738f8fbde964f3b88f20e` |
| 5 | `instance` | [idIsPolyI'](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/idispolyi.md) | 155 | `declaration-track:ffe7c789ae683a1c10a6e427ffbb4c8fdfb49adbd317dfde0e71930191742a0f` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/instance.md) | 160 | `declaration-track:6abfef587a6cea6b0a12cd2be14565522d1041a35864a28cee868c01eaf27c8d` |
| 7 | `theorem` | [ext](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/ext-source-edition-2.md) | 165 | `result-track:dee9274da75068e6ccec42729051402eef90a7354d36350a0d7a963714605cb5` |
| 8 | `instance` | [comp](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/comp.md) | 192 | `declaration-track:b27fc8b2ac04ddda7335f2b8135f70213c1e20d9dcc7cac002260ceb037da435` |
| 9 | `class` | [IsPoly₂](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/ispoly.md) | 213 | `declaration-track:8e34ced3781538a889e23f522479fa91b886f381fd4fc00bbf3dfe0a247c5056` |
| 10 | `instance` | [IsPoly₂.comp](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/ispoly-comp.md) | 222 | `declaration-track:11dd261e91f91235d3b7fa5e4f6da45f2783f7f898de93df67a9e027f6aaab89` |
| 11 | `instance` | [IsPoly.comp₂](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/ispoly-comp-source-edition-2.md) | 240 | `declaration-track:d50666e54457e51bf04e4a6c8382437d7ecf3c614463240359cc4a85c373bcda` |
| 12 | `instance` | [IsPoly₂.diag](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/ispoly-diag.md) | 250 | `declaration-track:d15e54daa99737cb35e8bd4f574b6eaea26e2d02eb70491d2da93901e980ca03` |
| 13 | `instance` | [negIsPoly](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/negispoly.md) | 265 | `declaration-track:d60270688527bdcf0a20d892f944d27ba406f83df8d6d99176bb686b21ac198d` |
| 14 | `instance` | [zeroIsPoly](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/zeroispoly.md) | 277 | `declaration-track:de8f130a1e0b9f20baa3d39ea081526ce528d1c3a48e69511f4cd1f1424719d1` |
| 15 | `theorem` | [bind₁_zero_wittPolynomial](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/bind-zero-wittpolynomial.md) | 281 | `result-track:04f80d8275f076eac2d326a4b19201f9bc4a5d45e76b072d5dfaff2fafd92f3c` |
| 16 | `def` | [onePoly](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/onepoly.md) | 286 | `declaration-track:3265cbe464564dc70ae134747b2f208eb5891a50893f90d978ec01d6c255040e` |
| 17 | `theorem` | [bind₁_onePoly_wittPolynomial](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/bind-onepoly-wittpolynomial.md) | 290 | `result-track:11889a186ae9d3d15aef0c56d53b359fa885a573fa5b2806bcbc24d2cce9495c` |
| 18 | `instance` | [oneIsPoly](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/oneispoly.md) | 301 | `declaration-track:403edd80b2dff01b908d7d51155a9effde6a843fa52175fcd53597a0df550992` |
| 19 | `instance` | [addIsPoly₂](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/addispoly.md) | 313 | `declaration-track:1e24efd0e1dfbbe6c009b88e67fcd4d27be013367cafcea742f0dec029f42045` |
| 20 | `instance` | [mulIsPoly₂](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/mulispoly.md) | 318 | `declaration-track:e04d1d7b9b5fbed7e3584747f36d27a3ff5a503fbb075a5bbb1e27b58405b021` |
| 21 | `theorem` | [IsPoly.map](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/ispoly-map.md) | 322 | `result-track:42c41838fd5c42d179b6a05e2aaed1cb91c8ce0cbd1d5941147e7f95d222ebf6` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/instance-source-edition-2.md) | 335 | `declaration-track:9008461937095ea9a41fdca6e5fd70bacde5fe9be408a5055392b01bba24f342` |
| 23 | `theorem` | [ext](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/ext.md) | 338 | `result-track:3210d13fcee3f140d1110f0c4bedaf0e25789f9729811061f4c7a4748db8e550` |
| 24 | `theorem` | [map](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/map.md) | 365 | `result-track:ada4dfbbf8abc976a26d4ba1c9cd3e43ee15cf4d71b13323352f42c436ae60f0` |
| 25 | `syntax` | [(anonymous)](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/syntax-source-edition-2.md) | 390 | `declaration-track:f8b9f5e50bb18720cacd531efc84386ac064fa603c7de527aec3ddb70a2c5c52` |
| 26 | `macro_rules` | [(anonymous)](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/macro-rules.md) | 392 | `declaration-track:07f9b1aff1b3032f8b8fdd8ad69f8318f1a82a1aeb0de5c10a42f7e33dc84ced` |
| 27 | `syntax` | [(anonymous)](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/syntax.md) | 422 | `declaration-track:6f81ed706843f5ec80d3f0ea52f373b3977481be71f9056fd53820174448668f` |
| 28 | `def` | [runIntro](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/runintro.md) | 424 | `declaration-track:9e42ed95e8c5c3f30be5612f9c582b36cbf28ff5599728c403c7008ba336fbbe` |
| 29 | `def` | [getLocalOrIntro](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/getlocalorintro.md) | 432 | `declaration-track:0d7e25d0444ba1d12ef60a3cab2baba3037be2bf13e7769f6e0410ea39e80c2a` |
| 30 | `elab_rules` | [(anonymous)](../../../../CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition1.lean/declarations/elab-rules.md) | 438 | `declaration-track:88a769b540e83205d8aa0552d7433f82de4acdbe427d0cfdf4dce72834726a60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a4ed170a485921fe0638abc30baed1c3095232c90d96970097ccda603c47adf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
