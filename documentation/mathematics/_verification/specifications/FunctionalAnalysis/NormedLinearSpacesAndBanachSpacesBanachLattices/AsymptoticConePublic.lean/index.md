# Verification target: Asymptotic Cone Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "142e7f13eeb9e2be5beadf5df379d8d25b64a690",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AsymptoticConePublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AsymptoticConePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `142e7f13eeb9e2be5beadf5df379d8d25b64a690`.

Source path: `GRWTSK/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean.json)

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
| 1 | `theorem` | [AffineSpace.asymptoticNhds_le_cobounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AsymptoticConePublic.lean/declarations/affinespace-asymptoticnhds-le-cobounded.md) | 27 | `result-track:1d41a288042258915570486b82d376d91c5e1612ef276b50268383277e3e081b` |
| 2 | `theorem` | [asymptoticCone_subset_singleton_of_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AsymptoticConePublic.lean/declarations/asymptoticcone-subset-singleton-of-bounded.md) | 39 | `result-track:03fed4c9f5ae76cf73865e0747370dff0de24512fa58b3f59e5a7f62c8c3bba3` |
| 3 | `theorem` | [AffineSpace.cobounded_eq_iSup_sphere_asymptoticNhds](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AsymptoticConePublic.lean/declarations/affinespace-cobounded-eq-isup-sphere-asymptoticnhds.md) | 47 | `result-track:fc5972eda4fb587cc3f081557e6cdc9b603e8d4f5b66071019096c4e101c41b4` |
| 4 | `theorem` | [isBounded_iff_asymptoticCone_subset_singleton](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AsymptoticConePublic.lean/declarations/isbounded-iff-asymptoticcone-subset-singleton.md) | 69 | `result-track:4b01ea75a3d44ba03598a5b37abd32363046d1d484b066f7d0e71f5c7229fdc8` |
| 5 | `theorem` | [not_bounded_iff_exists_ne_zero_mem_asymptoticCone](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AsymptoticConePublic.lean/declarations/not-bounded-iff-exists-ne-zero-mem-asymptoticcone.md) | 79 | `result-track:95c67d7d8818ec982e522f4647fc16b41131ef1623bfd8aee10747a823985fbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36906734182f87145215a75dc08ea5948284996ab011792a7e3b6dbaa9ce2c56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
