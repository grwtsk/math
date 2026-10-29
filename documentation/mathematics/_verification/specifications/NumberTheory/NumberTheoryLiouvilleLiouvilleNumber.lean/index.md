# Verification target: Number Theory Liouville Liouville Number

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d16acf090302c00147af3bdfeb4d9269dc4d97f1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantc9c8d83fe700c3764adbd298570c890d693cc3b951584c4dad0400bb91946f4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d16acf090302c00147af3bdfeb4d9269dc4d97f1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantc9c8d83fe700c3764adbd298570c890d693cc3b951584c4dad0400bb91946f4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantc9c8d83fe700c3764adbd298570c890d693cc3b951584c4dad0400bb91946f4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Liouville.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liouvilleNumber](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/liouvillenumber.md) | 49 | `declaration-track:b4846d4515dcfe8d9db30803fddccdc4e785a7bfc26be4ff68ac36b4db49413b` |
| 2 | `def` | [partialSum](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/partialsum.md) | 61 | `declaration-track:c030b23f890c254deb0a2d2f21d580445cdee661194f0ae42e3074274403e75e` |
| 3 | `def` | [remainder](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/remainder.md) | 71 | `declaration-track:b103295acf1d9da9a637f86dc2e2cafb064ea3262ba216a12b4222fd37fab491` |
| 4 | `theorem` | [summable](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/summable.md) | 80 | `result-track:b303535f8462105a14a6c2a7044521ca526d399d550599b8c02286b1e2bbb47f` |
| 5 | `theorem` | [remainder_summable](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/remainder-summable.md) | 84 | `result-track:afb339f655f398e816a5cd7bd6165bcfc70945a1b4f68a9a2cfc54bac119db15` |
| 6 | `theorem` | [remainder_pos](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/remainder-pos.md) | 89 | `result-track:b7ff1fb892e5349946d8ab40542961769659c7ef8a1df14c5e3099c3dbf69467` |
| 7 | `theorem` | [partialSum_succ](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/partialsum-succ.md) | 93 | `result-track:0dc4da8710292750cb53eecf396fbc6af3d458945755e062ac3da5912b3f5c78` |
| 8 | `theorem` | [partialSum_add_remainder](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/partialsum-add-remainder.md) | 99 | `result-track:ce8615852cd533757dd1ee43b10c4e1c6f995f6f08f4f275bb4b64dcf5f445c5` |
| 9 | `theorem` | [remainder_lt'](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/remainder-lt-source-edition-2.md) | 110 | `result-track:f9f278acda44d77b1be6eddbeb9cf94ba25a328b75248938422f7d580fb63151` |
| 10 | `theorem` | [aux_calc](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/aux-calc.md) | 137 | `result-track:9b08e08eeec0b374b1e9c4a0a433107a9c3cab4dcccdce2521a5e1df1e041252` |
| 11 | `theorem` | [remainder_lt](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/remainder-lt.md) | 165 | `result-track:31a6e557810bfbc90ddaccdd103192dadce51bdc6b34e603fcc91f1a60501cb5` |
| 12 | `theorem` | [partialSum_eq_rat](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/partialsum-eq-rat.md) | 174 | `result-track:1da97748be4eee34b35e7f2b22173e016c56ceb316ade12a70dc1d18f609a275` |
| 13 | `theorem` | [liouville_liouvilleNumber](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/liouville-liouvillenumber.md) | 192 | `result-track:92cf3b339463f2c1976e36695af02b4ee46380896fb2d2a7b297f4ad84fce879` |
| 14 | `theorem` | [transcendental_liouvilleNumber](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumber.lean/declarations/transcendental-liouvillenumber.md) | 208 | `result-track:5b76264f41c093396b6cae60b0357f294326f5537b84dce523639182d1e5fa7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=938d0f5536d5d61441bfb2cb664d2fb60c2956f6e0dec745f5ed3a8be97d3298 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantc9c8d83fe700c3764adbd298570c890d693cc3b951584c4dad0400bb91946f4e.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantc9c8d83fe700c3764adbd298570c890d693cc3b951584c4dad0400bb91946f4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
