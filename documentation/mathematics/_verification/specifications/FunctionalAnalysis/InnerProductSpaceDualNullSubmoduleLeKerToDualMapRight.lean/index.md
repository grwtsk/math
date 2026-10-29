# Verification target: Inner Product Space Dual Null Submodule Le Ker To Dual Map Right

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f42e17c6809be4697f0656d211c9199dd965963",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant500c36c129ff6eb602b7ddc4c35f510f2755d55491386063927e1fdb5ca17e0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/index.md) · [Full source](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f42e17c6809be4697f0656d211c9199dd965963`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Dual/Variant500c36c129ff6eb602b7ddc4c35f510f2755d55491386063927e1fdb5ca17e0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Dual/Variant500c36c129ff6eb602b7ddc4c35f510f2755d55491386063927e1fdb5ca17e0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Dual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.NullSubmodule` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDualMap](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/todualmap.md) | 63 | `declaration-track:8689e1f635aca8362b09362788edf5126b9b29f62e3cb07ff264760d2840bb74` |
| 2 | `theorem` | [toDualMap_apply](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/todualmap-apply.md) | 69 | `result-track:73272b1114b409c299e745ef91cc3e6b7378f6acd79100a8f5aaee8e0f8505ce` |
| 3 | `lemma` | [nullSubmodule_le_ker_toDualMap_right](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/nullsubmodule-le-ker-todualmap-right.md) | 77 | `result-track:2019d5c3b164881a47cb8d985c29ca9ffb3e62510649f3794394740e6d7707d6` |
| 4 | `lemma` | [nullSubmodule_le_ker_toDualMap_left](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/nullsubmodule-le-ker-todualmap-left.md) | 81 | `result-track:f3fdf5f1d008452a2463be8319fda36f100b24682f0555411f0e4f11ea6acd43` |
| 5 | `theorem` | [innerSL_norm](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/innersl-norm.md) | 95 | `result-track:5626505ab17e8d042769ae8e0bfd9fedc6764f982b5d61ee72a4c86517e8702e` |
| 6 | `theorem` | [ext_inner_left_basis](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/ext-inner-left-basis.md) | 100 | `result-track:0017d0b908771f9eab1f572da78f9f6bed57883b09dfca0001383d3ba1254f7e` |
| 7 | `theorem` | [ext_inner_right_basis](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/ext-inner-right-basis.md) | 111 | `result-track:de73d9f078eefb3e87c7c4202e5805bb56adedf08ec1ef840acb5971e2021833` |
| 8 | `def` | [toDual](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/todual.md) | 124 | `declaration-track:7965c1acaf49e5096f92f7d043e0c59e904c49530dce423ab4bd80a912aa8f13` |
| 9 | `theorem` | [toDual_apply](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/todual-apply.md) | 167 | `result-track:b71e326116305426ecedd6536ff6d2137cde836356a219ce9a85678971591218` |
| 10 | `theorem` | [toDual_symm_apply](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/todual-symm-apply.md) | 171 | `result-track:96d666ae88b4e36be8351e3297fd4105a3986de116aaee2187061f7c2ab969d6` |
| 11 | `def` | [continuousLinearMapOfBilin](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/continuouslinearmapofbilin.md) | 179 | `declaration-track:8fa73f187d9b1903cfdea5a07260effafcf1a43c76f289ffc2f7072555a4d863` |
| 12 | `theorem` | [continuousLinearMapOfBilin_apply](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/continuouslinearmapofbilin-apply.md) | 187 | `result-track:5af1ee3013608715f64149c06615294aac508105effafcfee05d72ccdefc7db8` |
| 13 | `theorem` | [unique_continuousLinearMapOfBilin](../../../../FunctionalAnalysis/InnerProductSpaceDualNullSubmoduleLeKerToDualMapRight.lean/declarations/unique-continuouslinearmapofbilin.md) | 191 | `result-track:6f5bb0fdfa85f221dd5922a1caba5a42de577a9ec4f4954457decf16e8873676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9613872aec747033ec926d1882eaa40b9a13babf83ad8a27491d8d9af1d7540 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Dual/Variant500c36c129ff6eb602b7ddc4c35f510f2755d55491386063927e1fdb5ca17e0e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Dual/Variant500c36c129ff6eb602b7ddc4c35f510f2755d55491386063927e1fdb5ca17e0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
