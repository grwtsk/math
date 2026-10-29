# Verification target: Action Pointwise Set Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b119a702edb8054802ac4ac2173e4dee920464fd",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Set/Variant5a73fd293bd1c6d77422c7713fcb7b0704046743fc4f5eab55109b67c166058b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b119a702edb8054802ac4ac2173e4dee920464fd`.

Source path: `GRWTSK/Algebra/Set/Variant5a73fd293bd1c6d77422c7713fcb7b0704046743fc4f5eab55109b67c166058b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Set/Variant5a73fd293bd1c6d77422c7713fcb7b0704046743fc4f5eab55109b67c166058b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_set_pi₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smul-set-pi-source-edition-2.md) | 34 | `result-track:ef9c9f989a065704d9b085726e0cedffe9bb5e759dba50f8906c5999911cc9d1` |
| 2 | `lemma` | [smul_set_pi₀'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smul-set-pi.md) | 39 | `result-track:df778b257322595204b7006f11b6daca4f63f19cdb2dff5075ea82fe850d301f` |
| 3 | `def` | [smulZeroClassSet](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smulzeroclassset.md) | 49 | `declaration-track:2dea7076aaf30064260575df67fe8241cd0f2e11dd60d2c7264228f5a1cdd7ba` |
| 4 | `lemma` | [smul_zero_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smul-zero-subset.md) | 54 | `result-track:ddce31b726928e5ad2c61d26a9af21118590af5aac9a009eddf6206d9d2ff7a0` |
| 5 | `lemma` | [Nonempty.smul_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/nonempty-smul-zero.md) | 56 | `result-track:e5ccb91a5b3793700d49c1cffe0ea0825bf95d649287ae7274c7df5df46fcfe0` |
| 6 | `lemma` | [zero_mem_smul_set](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/zero-mem-smul-set.md) | 59 | `result-track:d02e9173e8e8e3d2211dbe1bfd0aec3533b7d15a9839c8880e0052d3c628ff00` |
| 7 | `lemma` | [zero_smul_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/zero-smul-subset.md) | 71 | `result-track:1423fa12c91f0f9634ff0f395fb6208eaec59f73c5ebd7f17b00272968810412` |
| 8 | `lemma` | [Nonempty.zero_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/nonempty-zero-smul.md) | 73 | `result-track:47140a86e00449fd13eefa6d20b09e541a64f6c2a88b7bac5f4bfb06997cbd64` |
| 9 | `lemma` | [zero_smul_set](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/zero-smul-set.md) | 77 | `result-track:0395d011007f62269f2c69c1eb3c5b29fe583fd8e5b90d57af527aac12d9d7b3` |
| 10 | `lemma` | [zero_smul_set_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/zero-smul-set-subset.md) | 80 | `result-track:01d6c9ec5d5de246eb02cc60bcd2de277ddd101e0c5b6c3ff4e77a1c983b092c` |
| 11 | `lemma` | [subsingleton_zero_smul_set](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/subsingleton-zero-smul-set.md) | 83 | `result-track:1fcb20123e4fca966084de4039cd7e2aabc1703a1048ed3b5ba8687d4234444b` |
| 12 | `def` | [distribSMulSet](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/distribsmulset.md) | 91 | `declaration-track:cde724d6cd0b94624c9fe502d4d5f09ca3079ca74a0eed74ce70e876d5d98552` |
| 13 | `def` | [distribMulActionSet](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/distribmulactionset.md) | 100 | `declaration-track:a2dc12c7e462c81131c69fed6cbd00a4a5882751805c660a3e09d00e8c62dd19` |
| 14 | `def` | [mulDistribMulActionSet](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/muldistribmulactionset.md) | 107 | `declaration-track:63a8b8571ae197cc91a38feb3cfc379cbbf3d6df5fd744bbca9922d9305e9f9f` |
| 15 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/instance.md) | 114 | `declaration-track:736b0588d7ecf28bf9f4f7ae1cfe360de3d74a39cd066ec8e3911783f1e947ba` |
| 16 | `lemma` | [smul_mem_smul_set_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smul-mem-smul-set-iff.md) | 127 | `result-track:106d8b3313a2d734150bdf4b6f7d8bfadc5d1d4eea49f640a158bfaa4527d29f` |
| 17 | `lemma` | [mem_smul_set_iff_inv_smul_mem₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/mem-smul-set-iff-inv-smul-mem.md) | 130 | `result-track:1c5c12ff79982f0ab78ff4a93b1de183a77abc620aef77f8d213618ff47278e7` |
| 18 | `lemma` | [mem_inv_smul_set_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/mem-inv-smul-set-iff.md) | 133 | `result-track:e434ef4e7f2901ee10f1f3333fcf11fdb055b9d3885268c782bfd2f249636ea7` |
| 19 | `lemma` | [preimage_smul₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/preimage-smul.md) | 136 | `result-track:ed9bee95bb2d8844f32fd93547df72fc44fb0fb296208b7fa3af4c73307c0b65` |
| 20 | `lemma` | [preimage_smul_inv₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/preimage-smul-inv.md) | 139 | `result-track:4324e86a5e5ff85e3b3b4f306497c01e73c49288d45c84ae60e30b071bf38b6c` |
| 21 | `lemma` | [smul_set_subset_smul_set_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smul-set-subset-smul-set-iff.md) | 143 | `result-track:1ceb95bd65c271e19577ab94920abe9a57780365eabd696d7a2b0e96c9ccad98` |
| 22 | `lemma` | [smul_set_subset_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smul-set-subset-iff.md) | 146 | `result-track:d1e46e3725bc9fa1b52b61dba0eda2d368a587239af03cefc5af151876619204` |
| 23 | `lemma` | [subset_smul_set_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/subset-smul-set-iff.md) | 149 | `result-track:53eaf6a521692cd92bfa1a4daff1c7b50108fd95d14d8ae930d7c2d5bb00e7b6` |
| 24 | `lemma` | [smul_set_inter₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smul-set-inter.md) | 152 | `result-track:06e669538cc7c068c3b444fc3f7ad2dcf7bfcb0ba9534f57630c7eaba8962fd6` |
| 25 | `lemma` | [smul_set_sdiff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smul-set-sdiff.md) | 155 | `result-track:6a85e18a4660ba7465d8a2bef8596dce39c2049bc1261a3be06afe6456b87239` |
| 26 | `lemma` | [smul_set_symmDiff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smul-set-symmdiff.md) | 159 | `result-track:704bcd673bf81472fb97b5b210eedb525b368504035808b6d486ff7bd7861ef8` |
| 27 | `lemma` | [smul_set_univ₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smul-set-univ.md) | 162 | `result-track:26fa3ac975f6518ad369ebd47ff6099f3564c0e636217fbb7e1981cc64bb9ad2` |
| 28 | `lemma` | [smul_univ₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smul-univ-source-edition-2.md) | 165 | `result-track:f760e1d597da9066eaca143d91fcc4d453174f21d8e709202d11dd89b7d419ed` |
| 29 | `lemma` | [smul_univ₀'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/smul-univ.md) | 169 | `result-track:9f32564bae707dc1c2e984d89204a27d95252583ab1b3577d95750e64bbbc539` |
| 30 | `lemma` | [inv_smul_set_distrib₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/inv-smul-set-distrib.md) | 173 | `result-track:af5fb28fa3e4c5ccf146084967166154743f8516bc7320adac55d72241d1c785` |
| 31 | `lemma` | [inv_op_smul_set_distrib₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionPointwiseSetPublic.lean/declarations/inv-op-smul-set-distrib.md) | 179 | `result-track:6f4e8811addc4641ce7d4a309538516c23cdc333e0052356b1556fac83b5e9ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de9cb0589ba9b62d67e9ec2270f82cfc7df31b56c597b9d985597301b8b6e58d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Set/Variant5a73fd293bd1c6d77422c7713fcb7b0704046743fc4f5eab55109b67c166058b.lean","GRWTSK/_verification/specifications/Algebra/Set/Variant5a73fd293bd1c6d77422c7713fcb7b0704046743fc4f5eab55109b67c166058b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
