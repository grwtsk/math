# Verification target: Normed Space Lp Equiv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34921f37b1d0b930d0ee29f29b9531796811fd54",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantb32863e2859878f8714b1148e5ba795aec0665c258d22d1452b0438de080527f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34921f37b1d0b930d0ee29f29b9531796811fd54`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantb32863e2859878f8714b1148e5ba795aec0665c258d22d1452b0438de080527f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantb32863e2859878f8714b1148e5ba795aec0665c258d22d1452b0438de080527f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.lpSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.PiLp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Bounded` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Memℓp.all](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/mem-p-all.md) | 58 | `result-track:cdf50deb2c7e2e8eb76496529d9ebfd5c486c4fd728a39a11ce9ad8c150850a8` |
| 2 | `def` | [Equiv.lpPiLp](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/equiv-lppilp.md) | 68 | `declaration-track:3cf423a2f38c4e6330618670bafff12ba38f4cd150e618f72ff3ba87473c03d8` |
| 3 | `theorem` | [coe_equiv_lpPiLp](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-equiv-lppilp.md) | 75 | `result-track:621aa96cbfc5f621a267f9b63dca25670ec3a98e0577ec89bd8431f33bcbacb7` |
| 4 | `theorem` | [coe_equiv_lpPiLp_symm](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-equiv-lppilp-symm.md) | 79 | `result-track:4653efa7119e83043f86c9c5913d9ba72eee6947179d0bf94e56c9e16851cd2c` |
| 5 | `theorem` | [equiv_lpPiLp_norm](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/equiv-lppilp-norm.md) | 83 | `result-track:7b4079fa17bc824f33f13cf56d5f0609222a3dc87b4d48d3fcdecf2a02be0af4` |
| 6 | `def` | [AddEquiv.lpPiLp](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/addequiv-lppilp.md) | 92 | `declaration-track:55aa5ad8cbc33e8c3ce29ad9041629be9ea9d86c9ad06c5366ae4b8791b4484d` |
| 7 | `theorem` | [coe_addEquiv_lpPiLp](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-addequiv-lppilp.md) | 96 | `result-track:236f684e467c51b05062c59be746cd6b8a2753727e439d4c3d0571fab5bc029b` |
| 8 | `theorem` | [coe_addEquiv_lpPiLp_symm](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-addequiv-lppilp-symm.md) | 100 | `result-track:61c93aae8a0d5f3e25a40a8f9a631d7a9baca41f926ce060abd26d1fd4a673bc` |
| 9 | `def` | [lpPiLpₗᵢ](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/lppilp.md) | 115 | `declaration-track:8b6c6d59eea1fe4299739fc2cb90fb3fe018a9e17c61a2b3b25565b64fb8a5b5` |
| 10 | `theorem` | [coe_lpPiLpₗᵢ](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-lppilp.md) | 124 | `result-track:b553565dce1c76989bf5263acc0dc91f8e5235c76f1e7983dce108019493dd30` |
| 11 | `theorem` | [coe_lpPiLpₗᵢ_symm](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-lppilp-symm.md) | 128 | `result-track:1299b9b53d4af10546cacc60a0691ec22933c29f85193f82613f0e5e8f2d2c76` |
| 12 | `def` | [AddEquiv.lpBcf](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/addequiv-lpbcf.md) | 153 | `declaration-track:96c0f38eaa5ab189edc3053bffb017f3ffc79811368e78a14c3cbdb7716f839d` |
| 13 | `theorem` | [coe_addEquiv_lpBcf](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-addequiv-lpbcf.md) | 162 | `result-track:39495b6822f6b4a4a0094711c001e8ca75261605ecb785616b362d015082a2b0` |
| 14 | `theorem` | [coe_addEquiv_lpBcf_symm](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-addequiv-lpbcf-symm.md) | 166 | `result-track:1ea72206c9dca9a3ccedd70024386a02dcb4375cb74f76727d387456befdf1c2` |
| 15 | `def` | [lpBcfₗᵢ](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/lpbcf.md) | 176 | `declaration-track:4fb849c67ea2788c46287b2f15583165e34c2a6f994624c798b53a332a0c3075` |
| 16 | `theorem` | [coe_lpBcfₗᵢ](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-lpbcf.md) | 185 | `result-track:a9a7b28180c161b558cea3f0702e152e0e5226a488fe081f99990cb70bd8f33b` |
| 17 | `theorem` | [coe_lpBcfₗᵢ_symm](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-lpbcf-symm.md) | 189 | `result-track:fffa628389cace77055852f66db5364e8b2ee98ebd82dbb8e38762707e3ceb27` |
| 18 | `def` | [RingEquiv.lpBcf](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/ringequiv-lpbcf.md) | 198 | `declaration-track:d21361009cefee45d4d0a9d930ebcb8efde9ab1dd3349597694674f29247a9c9` |
| 19 | `theorem` | [coe_ringEquiv_lpBcf](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-ringequiv-lpbcf.md) | 205 | `result-track:3687c7572b80e2fb9b24b74e74a0350fb9eae0c0ecd489eadf75ca7c21eebb8b` |
| 20 | `theorem` | [coe_ringEquiv_lpBcf_symm](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-ringequiv-lpbcf-symm.md) | 209 | `result-track:3d392a24e52011d0045ccc54d71a059b4430fc8a910580f8be95dddbe86e947d` |
| 21 | `def` | [AlgEquiv.lpBcf](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/algequiv-lpbcf.md) | 219 | `declaration-track:475bbe77f256c76f0af0dd8d01359b67c2cb7f445de21f61a9f4754d19d5a045` |
| 22 | `theorem` | [coe_algEquiv_lpBcf](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-algequiv-lpbcf.md) | 225 | `result-track:4d02eb46c788816f9a721dce349050c009b5e88078ac90b83cd9807a2d1d4075` |
| 23 | `theorem` | [coe_algEquiv_lpBcf_symm](../../../../FunctionalAnalysis/NormedSpaceLpEquivNamespaced.lean/declarations/coe-algequiv-lpbcf-symm.md) | 229 | `result-track:9bd3545552e74b0d44c866737979426c821658ad4ff3c56d2689e4795e853216` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afea31daae9d2aa5da615d2ce2d3cce85070058be9156db9bd4050125a36e1a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantb32863e2859878f8714b1148e5ba795aec0665c258d22d1452b0438de080527f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantb32863e2859878f8714b1148e5ba795aec0665c258d22d1452b0438de080527f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
