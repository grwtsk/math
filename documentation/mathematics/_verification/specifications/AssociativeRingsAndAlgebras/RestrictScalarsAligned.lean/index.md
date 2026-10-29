# Verification target: Restrict Scalars Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d4c6477ee5799aac05659f9414fc5936513c344",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RestrictScalars/Varianta8c37c4a3aac287cb557d0d90dd60b72614f2d077f5a45f9e061c3827f8896d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d4c6477ee5799aac05659f9414fc5936513c344`.

Source path: `GRWTSK/Algebra/RestrictScalars/Varianta8c37c4a3aac287cb557d0d90dd60b72614f2d077f5a45f9e061c3827f8896d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RestrictScalars/Varianta8c37c4a3aac287cb557d0d90dd60b72614f2d077f5a45f9e061c3827f8896d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RestrictScalars](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars.md) | 78 | `declaration-track:40cc8223aff17a7023fcbdaafa7f4791c9652b4e9b84fe5872e44d7e6cf7b766` |
| 2 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/instance-source-edition-8.md) | 81 | `declaration-track:fd87dd7ac7e23442455b3ebd983c563484572abce4d9c6f52259f137704cde62` |
| 3 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/instance-source-edition-6.md) | 83 | `declaration-track:c8ab5fafef9611bcdeb1240c9b5751fd40f3118999977f9da15f5cd5f5d2a2ff` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/instance-source-edition-3.md) | 85 | `declaration-track:53d9b68c4374c4cbf7efa8fc43636f2951e9a806f45866115c5700807320c101` |
| 5 | `def` | [RestrictScalars.moduleOrig](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-moduleorig.md) | 94 | `declaration-track:288927f2b2c619d3e5bdded88397ebf42a95896d88ba07a17b665b70dd964dbe` |
| 6 | `instance` | [RestrictScalars.module](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-module.md) | 108 | `declaration-track:e214c4bcd57485a9b349ff218b337bffc6abdf2c7bf6b99bfe5178e3fe8358cc` |
| 7 | `instance` | [RestrictScalars.isScalarTower](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-isscalartower.md) | 113 | `declaration-track:24baae2f2ea1641467949bd8ce7e0afa85f8c342a01c538d3948b4d0ee3a0d5d` |
| 8 | `instance` | [RestrictScalars.opModule](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-opmodule.md) | 126 | `declaration-track:1ecdc12098e5ec2fd5fa93383d1c9e95d5271d5ea090f729be4fdc016283189d` |
| 9 | `instance` | [RestrictScalars.isCentralScalar](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-iscentralscalar.md) | 131 | `declaration-track:10092314b76c16790f75932a2fec7de92aa2bf8b302d7075aba5a03d4088d3ed` |
| 10 | `def` | [RestrictScalars.lsmul](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-lsmul.md) | 139 | `declaration-track:39ad342efc3c7afccfc7b7d525d52341f30ead8592d47ae85b6976e4e28a745e` |
| 11 | `def` | [RestrictScalars.addEquiv](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-addequiv.md) | 151 | `declaration-track:0deea247714fabd7a67bb5c1871d28372ca7f7eed5b6926e76cd0cd3f099e5ca` |
| 12 | `theorem` | [RestrictScalars.smul_def](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-smul-def.md) | 157 | `result-track:8315f215bdf46fc943765ea576cb0e162e96b97645698d6ce187e621c79bf580` |
| 13 | `theorem` | [RestrictScalars.addEquiv_map_smul](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-addequiv-map-smul.md) | 164 | `result-track:8341875e1b6bf4729f92459e38ab2352d3ec75d0c49b7ea1ebd772a735a274f2` |
| 14 | `theorem` | [RestrictScalars.addEquiv_symm_map_algebraMap_smul](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-addequiv-symm-map-algebramap-smul.md) | 169 | `result-track:d52a9f7413f350ac8987b7378835be3a34d29e6339b4d3e753eb73a1343e994b` |
| 15 | `theorem` | [RestrictScalars.addEquiv_symm_map_smul_smul](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-addequiv-symm-map-smul-smul.md) | 175 | `result-track:fc4b93d34cb2bdc38f87aa0d7f1645da7e9c6f927c87e0d5abf2c6cdb6e0308c` |
| 16 | `theorem` | [RestrictScalars.lsmul_apply_apply](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-lsmul-apply-apply.md) | 182 | `result-track:a65072b8ecc4ba1dcf112767f7f36defc38e12981565fa305763463929be47bc` |
| 17 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/instance-source-edition-4.md) | 192 | `declaration-track:603260658e15ca40088cb31c66fc7929bb44088dfdf00c28c9a4006590229da4` |
| 18 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/instance-source-edition-7.md) | 194 | `declaration-track:e083d8d06db2aa394555ce1ecafc542cd3ff12c64f84fc034ce996edc7f80ee5` |
| 19 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/instance-source-edition-5.md) | 196 | `declaration-track:b9b432620beebb8780e8a4092b0b837320fc26e993b03b6a956e9a91293fab88` |
| 20 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/instance.md) | 198 | `declaration-track:3db6ca935b7b0371532320ba852cfb250a158d9b2af98823f8677dad7561e0c4` |
| 21 | `def` | [RestrictScalars.ringEquiv](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-ringequiv.md) | 203 | `declaration-track:7e325081b5b98026363703daf936af3b3215c33802d62e40e88867c11251c182` |
| 22 | `theorem` | [RestrictScalars.ringEquiv_map_smul](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-ringequiv-map-smul.md) | 210 | `result-track:2ec1560677903cd41fde3c8585df6881756e0e408ea341fb2e813db228d0524d` |
| 23 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/instance-source-edition-2.md) | 217 | `declaration-track:4dd78d9ddec918825874db8a37718e6b5e346b54a8895e78095e454db19d1d3b` |
| 24 | `theorem` | [RestrictScalars.ringEquiv_algebraMap](../../../../AssociativeRingsAndAlgebras/RestrictScalarsAligned.lean/declarations/restrictscalars-ringequiv-algebramap.md) | 224 | `result-track:07b47613ab8f279a3b798913dba1916048c9b7295dc389f0f7dadbd02b77f19b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85c54f07fe325ad31b19057b5ce6a8dc58875c18aaa5f65b97712ff50ae68268 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RestrictScalars/Varianta8c37c4a3aac287cb557d0d90dd60b72614f2d077f5a45f9e061c3827f8896d9.lean","GRWTSK/_verification/specifications/Algebra/RestrictScalars/Varianta8c37c4a3aac287cb557d0d90dd60b72614f2d077f5a45f9e061c3827f8896d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
