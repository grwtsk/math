# Verification target: Build Model

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca2310a94c2269178bd39834fe8e9dde1e0deada",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variant780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/BuildModel.lean/index.md) · [Full source](../../../../Combinatorics/BuildModel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca2310a94c2269178bd39834fe8e9dde1e0deada`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variant780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BuildModel/Variant780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Manifest` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dependentsClosure](../../../../Combinatorics/BuildModel.lean/declarations/dependentsclosure.md) | 24 | `declaration-track:ee86b6401c69d3d955a588ff7719c272a93c6f035c2a139facd243f31b2c7d6a` |
| 2 | `theorem` | [mem_dependentsClosure_iff](../../../../Combinatorics/BuildModel.lean/declarations/mem-dependentsclosure-iff.md) | 30 | `result-track:bb00f425f4b9fc2dba094bd113605d80eb37afe92c215e4cc0c435bcfded24e2` |
| 3 | `theorem` | [seed_mem_dependentsClosure](../../../../Combinatorics/BuildModel.lean/declarations/seed-mem-dependentsclosure.md) | 38 | `result-track:39e13ab614804cbc5994cdbc220449ef3f0ded244d07fee471e21d53e85ec8ad` |
| 4 | `theorem` | [dependent_mem_dependentsClosure](../../../../Combinatorics/BuildModel.lean/declarations/dependent-mem-dependentsclosure.md) | 46 | `result-track:f3717168742c3d12f8f56be2c36f6263c1612586a22b07d34be65dcc913b3f73` |
| 5 | `theorem` | [dependentsClosure_mono](../../../../Combinatorics/BuildModel.lean/declarations/dependentsclosure-mono.md) | 56 | `result-track:4d8802bc554c9ec0dd6cf1f1a139a34a6cd7931ab242a08b18ec4d8c0e64da8d` |
| 6 | `theorem` | [dependentsClosure_minimal](../../../../Combinatorics/BuildModel.lean/declarations/dependentsclosure-minimal.md) | 66 | `result-track:87072a8852de417f662f59944e54fdf24f3d7b3ea9ac6e8f11704f43da23d482` |
| 7 | `structure` | [ChangeSet](../../../../Combinatorics/BuildModel.lean/declarations/changeset.md) | 83 | `declaration-track:7fb9ce97d866a2e76764b5171b775373edee8bd0d359dcc9186851595f7973c3` |
| 8 | `def` | [between](../../../../Combinatorics/BuildModel.lean/declarations/between.md) | 91 | `declaration-track:c5da1ab5d8a4295c25f670c28624caadf960a445f636cccaef34cc11bb5815c6` |
| 9 | `theorem` | [mem_between_implementation_iff](../../../../Combinatorics/BuildModel.lean/declarations/mem-between-implementation-iff.md) | 102 | `result-track:58d056933754b45f675c656d8cf23d7ad81633947987aedb966bab764ec90f5a` |
| 10 | `theorem` | [mem_between_public_iff](../../../../Combinatorics/BuildModel.lean/declarations/mem-between-public-iff.md) | 112 | `result-track:ffa0f6520ee1352aae78d9b20a80d43eb21cde7a1047a471be96dd095a77986d` |
| 11 | `theorem` | [mem_between_runtime_iff](../../../../Combinatorics/BuildModel.lean/declarations/mem-between-runtime-iff.md) | 122 | `result-track:483faf91a70d74ecb67b77881e29bfe80eaba323c5af266fb693c710269d8321` |
| 12 | `def` | [leanRebuild](../../../../Combinatorics/BuildModel.lean/declarations/leanrebuild.md) | 137 | `declaration-track:1e3ba166ace90dc1de2d91bae6bdf1f30882b56a9e0fd82c5f49bd9a3c19fd00` |
| 13 | `theorem` | [leanRebuild_eq](../../../../Combinatorics/BuildModel.lean/declarations/leanrebuild-eq.md) | 143 | `result-track:5e86c876b3d58f85b723757208a55f25e022a40b60a08d3bec397087e3686149` |
| 14 | `theorem` | [implChanged_subset_leanRebuild](../../../../Combinatorics/BuildModel.lean/declarations/implchanged-subset-leanrebuild.md) | 152 | `result-track:43463d89b27243d06dbe05b2df8d4fe97007a6da0ac7e01714fc4ce019606136` |
| 15 | `theorem` | [publicChanged_dependents_subset_leanRebuild](../../../../Combinatorics/BuildModel.lean/declarations/publicchanged-dependents-subset-leanrebuild.md) | 159 | `result-track:7946b431048987d8a2449e70c80d55d8cdbfdeb64ff809959d64f9c0bd7feeaf` |
| 16 | `theorem` | [publicChanged_subset_leanRebuild](../../../../Combinatorics/BuildModel.lean/declarations/publicchanged-subset-leanrebuild.md) | 166 | `result-track:f913c6bdc460ae9953b6b036fe5b4db82a6cef4ac3f3325b69895e3e0eb31157` |
| 17 | `theorem` | [leanRebuild_least](../../../../Combinatorics/BuildModel.lean/declarations/leanrebuild-least.md) | 175 | `result-track:048432df8dff5a61601c4f057980ea1b14f4fe8ec12c669072f4b2386fc09a4e` |
| 18 | `def` | [Affected](../../../../Combinatorics/BuildModel.lean/declarations/affected.md) | 187 | `declaration-track:808e0804a2f3ffb41bc47045b4157781da14789c92e285023d3fcd73c77c7ffd` |
| 19 | `theorem` | [tenant_affected_iff_inter_nonempty](../../../../Combinatorics/BuildModel.lean/declarations/tenant-affected-iff-inter-nonempty.md) | 195 | `result-track:b09422633de1d37f30c3ba6cb5f90741040ed44317c39913807d5588da1d7600` |
| 20 | `theorem` | [tenant_unaffected_iff_disjoint](../../../../Combinatorics/BuildModel.lean/declarations/tenant-unaffected-iff-disjoint-source-edition-2.md) | 208 | `result-track:f55931c1d59591213e7552efd838f7e0bce0c997886cfcf67489e85f816d4619` |
| 21 | `def` | [PublicFingerprintsUnchanged](../../../../Combinatorics/BuildModel.lean/declarations/publicfingerprintsunchanged-source-edition-2.md) | 219 | `declaration-track:d70bd658ffb35a42554a1fae3bfffeafdf26b391fd6cb91c61672789f3cdcf4c` |
| 22 | `theorem` | [not_affected_implies_publicFingerprintsUnchanged](../../../../Combinatorics/BuildModel.lean/declarations/not-affected-implies-publicfingerprintsunchanged-source-edition-2.md) | 232 | `result-track:a0c1f58e1ccbf07b62dc369e70336136a404360c18ba56c7c310aee6b85ce45d` |
| 23 | `def` | [Affected](../../../../Combinatorics/BuildModel.lean/declarations/affected-source-edition-2.md) | 251 | `declaration-track:b98907262c95729c90a3e896e48b41d4e02663d0222cd03b6b2aedf48bf078da` |
| 24 | `def` | [PublicFingerprintsUnchanged](../../../../Combinatorics/BuildModel.lean/declarations/publicfingerprintsunchanged.md) | 258 | `declaration-track:967eed9fdbd777f9da6943ddf94a1822ad15f044a3b6b3ce43559313533bcc3d` |
| 25 | `def` | [SemanticallyUnchanged](../../../../Combinatorics/BuildModel.lean/declarations/semanticallyunchanged.md) | 265 | `declaration-track:9721ad4d126b55659b639bcbf0971f3c9df50f6af0466ecb1e5e0aa962e636ba` |
| 26 | `structure` | [PublicFingerprintConsistency](../../../../Combinatorics/BuildModel.lean/declarations/publicfingerprintconsistency.md) | 278 | `declaration-track:95dfc50a3a20da0ca9319543b088abe838c3edda011d108c1d18d18aced2d473` |
| 27 | `theorem` | [tenant_affected_iff_inter_nonempty](../../../../Combinatorics/BuildModel.lean/declarations/tenant-affected-iff-inter-nonempty-source-edition-2.md) | 290 | `result-track:d6c07bca144dd0940918654821caa217e382b47935a1651165101b1d025524c0` |
| 28 | `theorem` | [tenant_unaffected_iff_disjoint](../../../../Combinatorics/BuildModel.lean/declarations/tenant-unaffected-iff-disjoint.md) | 300 | `result-track:0f457121bbec2cd2bc04ea5702f4f62f04a6ecd1acfdacd199114dfe53694a6b` |
| 29 | `theorem` | [not_affected_implies_publicFingerprintsUnchanged](../../../../Combinatorics/BuildModel.lean/declarations/not-affected-implies-publicfingerprintsunchanged.md) | 310 | `result-track:2f2341d5812c3c8de788cf014d530dfef787d9d64459f3f2b124712fbfb7109e` |
| 30 | `theorem` | [not_affected_implies_semantically_unchanged](../../../../Combinatorics/BuildModel.lean/declarations/not-affected-implies-semantically-unchanged.md) | 323 | `result-track:388c6609bc373a0039ffa0716d907d1202ec6fab93ff588585d3367ef2cf068c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f094d9725bc20de0ffa0f14a1ad388a00982c526d48c2f2607690838f82af4ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variant780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BuildModel/Variant780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
