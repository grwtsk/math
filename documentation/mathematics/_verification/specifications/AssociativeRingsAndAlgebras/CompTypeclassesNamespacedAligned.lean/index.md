# Verification target: Comp Typeclasses Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2de03b58ea918f60dac77f8d9542252fc4309bf9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CompTypeclasses/Variant85c7fd940c803b27acb259d4e271d05c081e98e239076e0489c6285c76801194.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2de03b58ea918f60dac77f8d9542252fc4309bf9`.

Source path: `GRWTSK/Algebra/CompTypeclasses/Variant85c7fd940c803b27acb259d4e271d05c081e98e239076e0489c6285c76801194.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CompTypeclasses/Variant85c7fd940c803b27acb259d4e271d05c081e98e239076e0489c6285c76801194.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Equiv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RingHomId](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/ringhomid.md) | 62 | `declaration-track:f3a769601cc2ea774c56227471ad48f7dbf6dca81046e79684ccbdd950a89474` |
| 2 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:1c0649da5966008da38358eee63a3f0b7085855551f7a40762024601ac510c07` |
| 3 | `class` | [RingHomCompTriple](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/ringhomcomptriple.md) | 70 | `declaration-track:bba51b8da9d68bc20c7de35acb73224982d6786593560a66cffd2228ea4caf6d` |
| 4 | `theorem` | [comp_apply](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/comp-apply.md) | 83 | `result-track:1ef0892fe1d95aeca526c48f31554ad12812b7b3495cfd71b9d0e1bb494b398d` |
| 5 | `class` | [RingHomInvPair](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/ringhominvpair.md) | 91 | `declaration-track:953ac292617c6e91834dfaae356b6cf06aa7707f0a5c15cc4a36a082dd56628b` |
| 6 | `theorem` | [comp_apply_eq](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/comp-apply-eq.md) | 109 | `result-track:a654f16c1c50abb4597bb5129c3ac06f3098a62d427be0a1fa4c6309cb0a1ef4` |
| 7 | `theorem` | [comp_apply_eq₂](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/comp-apply-eq-source-edition-2.md) | 115 | `result-track:eb5e4b42a345b5ee1e6b7519a4abe820581929db70c462892f7fa4b912484f4a` |
| 8 | `instance` | [ids](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/ids-source-edition-3.md) | 120 | `declaration-track:74b8220dc528a8c736e67b07a96770f9debd34305b412e31f8e690ce3792adca` |
| 9 | `instance` | [triples](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/triples.md) | 124 | `declaration-track:c639b6abcfc519f95b57718ca689d4294a971e3c36051d9f7362b1a132ab2415` |
| 10 | `instance` | [triples₂](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/triples-source-edition-2.md) | 129 | `declaration-track:ee88658b1d128279ebeea85015f5b4532cb8fe21c882448ee95fa465667b37f5` |
| 11 | `theorem` | [of_ringEquiv](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/of-ringequiv.md) | 142 | `result-track:b63d2eea8e306491818b158253cf180f39729244dab281ce78468dd1b3d95e68` |
| 12 | `theorem` | [symm](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/symm.md) | 154 | `result-track:ba296d0ba0b53ca8d5f554b6a25ccd7ab7a65cd3eaa7a6b337bdb188bca62970` |
| 13 | `instance` | [ids](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/ids.md) | 163 | `declaration-track:31437b25df0264c19f40b0d751152bb37282b2a47ce30eb059af45c5f38431a9` |
| 14 | `instance` | [right_ids](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/right-ids.md) | 169 | `declaration-track:3286b74d7aaf246a5fa50ed331905776fafdb949085ecffffb99ced4bb86509b` |
| 15 | `class` | [RingHomSurjective](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/ringhomsurjective.md) | 179 | `declaration-track:a185bd8efc6fdb4d6c1ee546b178a3631fa3728dddcc62f899bab95fda9bcb80` |
| 16 | `theorem` | [RingHom.surjective](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/ringhom-surjective.md) | 184 | `result-track:30ab286ffc6fd5a397afba921e3eafd719bcfdf43eba576dc5bd96abb531bef0` |
| 17 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/instance.md) | 192 | `declaration-track:067449235ad6de0d5515f44a46d62379aa9f77e19239c0c8834ca463de8fe165` |
| 18 | `instance` | [ids](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/ids-source-edition-2.md) | 197 | `declaration-track:51449499686db5e955c6879f0873ff84f4d36531030bf9bb5160d575e9dc625d` |
| 19 | `theorem` | [comp](../../../../AssociativeRingsAndAlgebras/CompTypeclassesNamespacedAligned.lean/declarations/comp.md) | 202 | `result-track:363bf1c12c26171fa63b6a9842e51e07cdb14a0667ec46753b74b23e193376fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cff9067dc033541dd227f8c5c31957815dcedaffb79a3f7bbe74335f6f6b92a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CompTypeclasses/Variant85c7fd940c803b27acb259d4e271d05c081e98e239076e0489c6285c76801194.lean","GRWTSK/_verification/specifications/Algebra/CompTypeclasses/Variant85c7fd940c803b27acb259d4e271d05c081e98e239076e0489c6285c76801194.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
