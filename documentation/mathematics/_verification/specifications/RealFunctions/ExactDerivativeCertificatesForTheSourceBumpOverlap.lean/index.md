# Verification target: Exact Derivative Certificates For The Source Bump Overlap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c110d3be0f9c3490c486272c3c9c6d0d92e14a37",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Variant5d4ab3b900736b2c12550f9822ced6480aaebb9dcefffae06855c259bc18ce0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/index.md) · [Full source](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c110d3be0f9c3490c486272c3c9c6d0d92e14a37`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Variant5d4ab3b900736b2c12550f9822ced6480aaebb9dcefffae06855c259bc18ce0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Variant5d4ab3b900736b2c12550f9822ced6480aaebb9dcefffae06855c259bc18ce0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [overlapP1](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapp1.md) | 23 | `declaration-track:1549e2c1163d88800dd524f0ab5cc53d78bebfbb16959197d62853781c131597` |
| 2 | `def` | [overlapP2](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapp2.md) | 28 | `declaration-track:00ca85f4a4e21506700b925a70b5c6d90b44b1eb4cd6ab128c6b19be6ffcc4e4` |
| 3 | `theorem` | [overlapProfile_neg_deriv](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapprofile-neg-deriv.md) | 33 | `result-track:9f99695a8292b091bec2878abacb5cff803d419cd8c3c96686e62587d293195d` |
| 4 | `theorem` | [overlapProfile_deriv](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapprofile-deriv.md) | 41 | `result-track:a6a74918eb2c98bac266c9e53a13d482d7a970d20310f6466f06c52ddf09f44b` |
| 5 | `theorem` | [overlapProfile_deriv_eq](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapprofile-deriv-eq.md) | 47 | `result-track:cdbb4336cf4c17653f4366966a3740781897e06598d4e0d9b93455c1227914e9` |
| 6 | `theorem` | [overlapProfile_second_deriv_certificate](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapprofile-second-deriv-certificate.md) | 52 | `result-track:89c85893813e19b04c1906b22db42e4cbea9bbb36a1ea82921226bbd5a3912e6` |
| 7 | `theorem` | [overlapP0_nonneg](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapp0-nonneg.md) | 63 | `result-track:4184aa881e246e1b2be452bb90d3ff8dad865654dbc9b0c03739f3383317e14e` |
| 8 | `theorem` | [overlapP1_nonneg](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapp1-nonneg.md) | 67 | `result-track:e69adc7118084c242d6b1dfa1ba6fbdd5a9bd998d1b15c7ca64d2447a2ce6505` |
| 9 | `theorem` | [overlapP2_nonneg](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapp2-nonneg.md) | 71 | `result-track:a00476913d28f4abd0273e354cc99088f7168f9ee863075f789f04ecbf58447f` |
| 10 | `theorem` | [overlapProfile_nonneg](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapprofile-nonneg.md) | 76 | `result-track:a087544d8b0f68396188ef7aae3d500abf2ab48ef595b893c47cff624929d8d6` |
| 11 | `theorem` | [overlapProfile_deriv_nonpos](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapprofile-deriv-nonpos.md) | 83 | `result-track:b2722f5dc1970a6bd4eec03a4582781a546a8e2e59dcd3aad153363a55e3250f` |
| 12 | `theorem` | [overlapProfile_second_deriv_lower](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapprofile-second-deriv-lower.md) | 91 | `result-track:eca458b75761a6212b39efc1d6123e2ea6528f6ef3f23951b3a1e11cf6b14b03` |
| 13 | `theorem` | [overlapProfile_zero](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapprofile-zero.md) | 99 | `result-track:455d817a469b7fb3e4caf6ec6c30b234fd7d3c2f87f757b0c0cb30053308f205` |
| 14 | `theorem` | [overlapProfile_deriv_zero](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapprofile-deriv-zero.md) | 102 | `result-track:eb48dbee2e515c000e1b17d1ef487538cf8398e8c6e99a695fc1817e7547377e` |
| 15 | `theorem` | [overlapProfile_second_deriv_zero](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/overlapprofile-second-deriv-zero.md) | 106 | `result-track:35fde4bf47b1f88eac1fe6e15af2f8b3dae3432e70bf096d1b9068ed6bac10eb` |
| 16 | `def` | [peanoNumerator](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/peanonumerator.md) | 114 | `declaration-track:11de8cf15b94713f579e531d913562233b801c92d0273a39732f7a88ca4aeb5a` |
| 17 | `theorem` | [peanoNumerator_decomposition](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/peanonumerator-decomposition.md) | 118 | `result-track:18d885931e42b2b41b1c8de5c8f2bce2d115e6cc241ca225e5948989d7bbf1a6` |
| 18 | `theorem` | [peanoNumerator_nonneg](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/peanonumerator-nonneg.md) | 127 | `result-track:e7b5a96b20c70458d218f81249df77717f3c992025e3fc908f36afa4c53b0320` |
| 19 | `theorem` | [peanoNumerator_nonneg_iff](../../../../RealFunctions/ExactDerivativeCertificatesForTheSourceBumpOverlap.lean/declarations/peanonumerator-nonneg-iff.md) | 145 | `result-track:bcefe1aafac097a45a0f15fd65306c84f7b3ed3bb0cc1bc43bc374ab9d5880cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1910c2da88716da7160cd35b13199b602629e78f280f6e526c56bb4c71f3ac63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Variant5d4ab3b900736b2c12550f9822ced6480aaebb9dcefffae06855c259bc18ce0e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Variant5d4ab3b900736b2c12550f9822ced6480aaebb9dcefffae06855c259bc18ce0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
