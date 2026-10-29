# Verification target: Morphisms Quasi Separated Quasi Compact Affine Property Iff Quasi Separated Space Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64d2a0a40efa2d762aac283a9612445e6427169d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64d2a0a40efa2d762aac283a9612445e6427169d`.

Source path: `GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.QuasiCompact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.QuasiSeparated` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated.md) | 46 | `declaration-track:0aea808f710a2c97c9ce6dbc9fddd5637293de0adce57f5ad7224f233bcb24f3` |
| 2 | `def` | [QuasiSeparated.affineProperty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-affineproperty.md) | 53 | `declaration-track:a145b16b57ccd89b43eb392df24965f3c4afcf8947727cc047487110bcb6d7cc` |
| 3 | `theorem` | [quasiSeparatedSpace_iff_affine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparatedspace-iff-affine.md) | 57 | `result-track:1b516ed68a287814cbdafd1fa10a0d1aa9be5e3e8ed6533906c606fa6838d9c8` |
| 4 | `theorem` | [quasi_compact_affineProperty_iff_quasiSeparatedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasi-compact-affineproperty-iff-quasiseparatedspace.md) | 86 | `result-track:dc9787614165546bb5e6a0415d6300ebbdc607d604bf036cef85d38196fe8686` |
| 5 | `theorem` | [quasiSeparated_eq_diagonal_is_quasiCompact](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-eq-diagonal-is-quasicompact.md) | 117 | `result-track:6efb36f4553cb98d618ddb9066abfb92590ba1eb9a6eaa41f2cc9aae3238d4ee` |
| 6 | `theorem` | [quasi_compact_affineProperty_diagonal_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasi-compact-affineproperty-diagonal-eq.md) | 121 | `result-track:13f14c541c8caea33f10c36c6c563d66c824daab658bdc46f657f0c076c72297` |
| 7 | `theorem` | [quasiSeparated_eq_affineProperty_diagonal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-eq-affineproperty-diagonal.md) | 126 | `result-track:befdc8598e9182e07ab81925e898d4c5adf9a328c51bf4e1c966ed1d0002b444` |
| 8 | `theorem` | [quasiSeparated_eq_affineProperty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-eq-affineproperty.md) | 133 | `result-track:f39031e534bf9544d7cb1f872442879d39d01d5d2ae4bf5e48e515e0f6b1ce34` |
| 9 | `theorem` | [QuasiSeparated.affineProperty_isLocal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-affineproperty-islocal.md) | 138 | `result-track:84acea5efb0d708c2957329c4a489ab61562a9cd2a93805dbe826acb59641c7a` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/instance-source-edition-3.md) | 142 | `declaration-track:8cd92ae2143872af7e114a799c9aae45ef22c08d53302bddc481f2cf20438b12` |
| 11 | `theorem` | [quasiSeparated_stableUnderComposition](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-stableundercomposition.md) | 147 | `result-track:4cfc52716d63834bb7eb64138a99cf4b4e3b6d16f9307c925b6cb68f38da478f` |
| 12 | `theorem` | [quasiSeparated_stableUnderBaseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-stableunderbasechange.md) | 154 | `result-track:193367bd91258c7b65b63b17fe64f8bd72374b5075d907ff29f02719bf3e63b2` |
| 13 | `instance` | [quasiSeparatedComp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparatedcomp.md) | 160 | `declaration-track:4d8fef7724c070b6fceb517028c5228b1e3983a73b81183d089e033c85cea725` |
| 14 | `theorem` | [quasiSeparated_respectsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-respectsiso.md) | 165 | `result-track:763188e056a89866f732b31498ffbfcf85e8740774755e581cd2e01a1faa14e1` |
| 15 | `theorem` | [QuasiSeparated.affine_openCover_TFAE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-affine-opencover-tfae.md) | 170 | `result-track:a683804b54bc661ca0d9d211b9eba49dfafc5df451e6712f575b573fbb7d8905` |
| 16 | `theorem` | [QuasiSeparated.is_local_at_target](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-is-local-at-target.md) | 190 | `result-track:3bc44e1218cf490401bff6d45ef8156cbae330ec23f3c1e12bf428ed0e063eb4` |
| 17 | `theorem` | [QuasiSeparated.openCover_TFAE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-opencover-tfae.md) | 196 | `result-track:5cd5a4574ee0d46997a8658093c19bb25fdce4916261745502b7e0ace6fa0f6c` |
| 18 | `theorem` | [quasiSeparated_over_affine_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-over-affine-iff.md) | 211 | `result-track:5952866f1768b7f787c85dfe024c3b9b00d8b16ca59ef1425838a3200abbb1e4` |
| 19 | `theorem` | [quasiSeparatedSpace_iff_quasiSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparatedspace-iff-quasiseparated.md) | 217 | `result-track:82d65ead2c49ef8fec6e50cbc5b68f920a0cadd8e07c12b6c66f73a318da0d04` |
| 20 | `theorem` | [QuasiSeparated.affine_openCover_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-affine-opencover-iff.md) | 222 | `result-track:96de7e70e91db7ab4752fb32960bf8464f1d27b6ec354153b34d65d46c29d6ff` |
| 21 | `theorem` | [QuasiSeparated.openCover_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparated-opencover-iff.md) | 230 | `result-track:ef35f301f1315894246637a9dc6a66edfd07feab237f8d2c25aaf09cca1e4194` |
| 22 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/instance.md) | 235 | `declaration-track:0221d78efefc094a54a02eeaf603cc3504305ddd567381952dd229f7441f3f6c` |
| 23 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/instance-source-edition-4.md) | 239 | `declaration-track:d19449c542c0f28b4f45afa840edbe8600475ac8d2fe090af89e9786e83d5891` |
| 24 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/instance-source-edition-2.md) | 243 | `declaration-track:2efbf52376d19f0476689738aa16b07068f715cc3f923dc5456155cc2cb5a090` |
| 25 | `theorem` | [quasiSeparatedSpace_of_quasiSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparatedspace-of-quasiseparated.md) | 247 | `result-track:7b8740be483a7414608a9053d8656c56f940284cfb6ffe166d0e27074ee39e1c` |
| 26 | `instance` | [quasiSeparatedSpace_of_isAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparatedspace-of-isaffine.md) | 255 | `declaration-track:dbf30b9580416fda1b8d5312d8076b0cb44a9b7a261f6e5dd0a47e1e42a59797` |
| 27 | `theorem` | [IsAffineOpen.isQuasiSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/isaffineopen-isquasiseparated.md) | 272 | `result-track:7dc47ebb27948bfdbf17665f873bb8c7bc1ad4a7331f64dfb45e5d86e8b9c88d` |
| 28 | `theorem` | [quasiSeparatedOfComp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/quasiseparatedofcomp.md) | 278 | `result-track:186f9933ee3f694eb4f7ab314be33d3d2754628fdc7a8459329f60cdb7d198d6` |
| 29 | `theorem` | [exists_eq_pow_mul_of_isAffineOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/exists-eq-pow-mul-of-isaffineopen.md) | 303 | `result-track:874f341a3f4305f4a3a9c0fd680b0192bed22b7f2521af0ccf322ff9a9e3c336` |
| 30 | `theorem` | [exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/exists-eq-pow-mul-of-is-compact-of-quasi-separated-space-aux.md) | 314 | `result-track:96cbb8f4f60336d05ae0427760606c2841b907af36cdf21633d7cff91a56640d` |
| 31 | `theorem` | [exists_eq_pow_mul_of_isCompact_of_isQuasiSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/exists-eq-pow-mul-of-iscompact-of-isquasiseparated.md) | 376 | `result-track:27c3d823206ce70784458bee0c556ae391b7c4929ebef8bb52284f0005fcf1a6` |
| 32 | `theorem` | [is_localization_basicOpen_of_qcqs](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpaceAligned.lean/declarations/is-localization-basicopen-of-qcqs.md) | 518 | `result-track:fd05a883b387e11c0401f600766ed97e5d0e1c678cfa0e92f02d7936eb3808b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e8fe06a4079d4c18077e3284e5c8b040ea9539341d429f46bb3747f34c1c307 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
