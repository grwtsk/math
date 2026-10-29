# Verification target: Is Open Comap C

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec694a8273fb3ac1a8fa00c65c83d8a46bce2f4a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/IsOpenComapC/Variant7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IsOpenComapC.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IsOpenComapC.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec694a8273fb3ac1a8fa00c65c83d8a46bce2f4a`.

Source path: `GRWTSK/Algebra/RingTheory/IsOpenComapC/Variant7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/IsOpenComapC/Variant7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [imageOfDf](../../../../CommutativeAlgebra/IsOpenComapC.lean/declarations/imageofdf.md) | 31 | `declaration-track:091f51aa47e841eb22b6bc87b7ba222e62a30a0d8792e6613ca431c35c560278` |
| 2 | `theorem` | [isOpen_imageOfDf](../../../../CommutativeAlgebra/IsOpenComapC.lean/declarations/isopen-imageofdf.md) | 34 | `result-track:c725a9abb977d87010f3069bd04ae8bcf2e4141e7c59ecaab1b865f415beb2ee` |
| 3 | `theorem` | [comap_C_mem_imageOfDf](../../../../CommutativeAlgebra/IsOpenComapC.lean/declarations/comap-c-mem-imageofdf.md) | 41 | `result-track:71790277a0930e2117fa873297b0e187b9faf179bd9afdb871297b2f08aa9446` |
| 4 | `theorem` | [imageOfDf_eq_comap_C_compl_zeroLocus](../../../../CommutativeAlgebra/IsOpenComapC.lean/declarations/imageofdf-eq-comap-c-compl-zerolocus.md) | 48 | `result-track:b5029851a0176fa983fddfc8197ff4497f31f236cbad2c9aeeb000e000cf9862` |
| 5 | `theorem` | [isOpenMap_comap_C](../../../../CommutativeAlgebra/IsOpenComapC.lean/declarations/isopenmap-comap-c.md) | 64 | `result-track:b3c11f69a94b33d0846acaa2322f0b6276b2ca88c68533ce58fbfbe678fda56d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a824134b6e9f4e3b6704d5ef5464bafea225151c58bf55143ecef9633a8af8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/IsOpenComapC/Variant7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/IsOpenComapC/Variant7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
