# Verification target: Binding The Explicit Corrector And Storage To The Unchanged Arithmetic Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac91a0dcd07b4f7a81b5dc17612929bf4c9d71e7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variant878eb58001f800906fc508f6916c2df53293e8430f6173a147556b32f1622411.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BindingTheExplicitCorrectorAndStorageToTheUnchangedArithmeticSource.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BindingTheExplicitCorrectorAndStorageToTheUnchangedArithmeticSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac91a0dcd07b4f7a81b5dc17612929bf4c9d71e7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variant878eb58001f800906fc508f6916c2df53293e8430f6173a147556b32f1622411.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variant878eb58001f800906fc508f6916c2df53293e8430f6173a147556b32f1622411.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaStorage` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceForcing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BindingTheExplicitCorrectorAndStorageToTheUnchangedArithmeticSource.lean/declarations/sourceforcing.md) | 21 | `declaration-track:93641c28eae385cd5043204ea5e83aa1e0f9322e10706710c4e11435d1657b77` |
| 2 | `def` | [sourceCorrector](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BindingTheExplicitCorrectorAndStorageToTheUnchangedArithmeticSource.lean/declarations/sourcecorrector.md) | 23 | `declaration-track:2478d12549690a5859f25dc9b6b14c538ee6cb5efc6309871e440b5a4ddd94f7` |
| 3 | `def` | [sourceStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BindingTheExplicitCorrectorAndStorageToTheUnchangedArithmeticSource.lean/declarations/sourcestorage.md) | 28 | `declaration-track:30701639c205c7e74a86d94dd5542dd50fb9778ee2015cf123ec74fa11d9b4cb` |
| 4 | `theorem` | [sourceForcing_hasDerivAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BindingTheExplicitCorrectorAndStorageToTheUnchangedArithmeticSource.lean/declarations/sourceforcing-hasderivat.md) | 31 | `result-track:26f6a2ab5e38fcc2c863a79ce0157af974bd24953b91fb9b100ce1d1252ea3fd` |
| 5 | `theorem` | [sourceCorrector_deriv_cancel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BindingTheExplicitCorrectorAndStorageToTheUnchangedArithmeticSource.lean/declarations/sourcecorrector-deriv-cancel.md) | 38 | `result-track:2fedb5a85943f1c190fca10936fdab1a065f5873dc865bbb8bfdb776f799d35a` |
| 6 | `theorem` | [sourceStorage_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BindingTheExplicitCorrectorAndStorageToTheUnchangedArithmeticSource.lean/declarations/sourcestorage-upper.md) | 52 | `result-track:4b377b5aa89cc218b52ec9ea4153d8cc0b935fc2ce9b6e85a5fe0a0213333cc0` |
| 7 | `theorem` | [sourceStorage_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BindingTheExplicitCorrectorAndStorageToTheUnchangedArithmeticSource.lean/declarations/sourcestorage-zero.md) | 55 | `result-track:449b5177eb82c12ed1d00879f12ceb377311073304e625b4b1b041537979c65b` |
| 8 | `theorem` | [sourceStorage_zero_epsilon](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BindingTheExplicitCorrectorAndStorageToTheUnchangedArithmeticSource.lean/declarations/sourcestorage-zero-epsilon.md) | 62 | `result-track:0d06b9a507b74d98dc1430b5e975f3211adbdf4743465e365297d7b505c77551` |
| 9 | `theorem` | [sourceCorrector_forcing_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BindingTheExplicitCorrectorAndStorageToTheUnchangedArithmeticSource.lean/declarations/sourcecorrector-forcing-lower.md) | 72 | `result-track:d1db14004a940e2106a1dba6d0ead3c5c3544be21ed88b9a78549833766da246` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5828548abed8103981cbbd2f1294e2de9009aa26077df70581c2d1991be4b59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variant878eb58001f800906fc508f6916c2df53293e8430f6173a147556b32f1622411.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variant878eb58001f800906fc508f6916c2df53293e8430f6173a147556b32f1622411.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
