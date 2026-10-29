# Verification target: Resolver Frontier Unknown Kind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b91417f1c0fa1115b015f086330862062c260e3a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variantd11d1453ad8cc4fcf8ea2f217c87c6c849e9543bbc8ff791a4fa16cfd240c370.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ResolverFrontierUnknownKind.lean/index.md) · [Full source](../../../../Combinatorics/ResolverFrontierUnknownKind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b91417f1c0fa1115b015f086330862062c260e3a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variantd11d1453ad8cc4fcf8ea2f217c87c6c849e9543bbc8ff791a4fa16cfd240c370.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Resolver/Variantd11d1453ad8cc4fcf8ea2f217c87c6c849e9543bbc8ff791a4fa16cfd240c370.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Completion.Bitfield` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Completion.ContinuationCover` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Obstruction.Provenance` — import line 3; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Obstruction.Factorization` — import line 4; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Refinement.Address` — import line 5; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Refinement.CanonicalObstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Symmetry.OrientationEquivariance` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FrontierUnknownKind](../../../../Combinatorics/ResolverFrontierUnknownKind.lean/declarations/frontierunknownkind.md) | 24 | `declaration-track:fc7559417a9c1d9b99d3b8e5f8a18de43a546d4524ce241e5f1bbbb7cc92496c` |
| 2 | `inductive` | [RefinementRejection](../../../../Combinatorics/ResolverFrontierUnknownKind.lean/declarations/refinementrejection.md) | 39 | `declaration-track:5e41a82c6c2dd454181e835e2dc9b58b9846778534434fbb7e79d41f9ba35e2f` |
| 3 | `inductive` | [FrontierResolution](../../../../Combinatorics/ResolverFrontierUnknownKind.lean/declarations/frontierresolution.md) | 51 | `declaration-track:ae8206a91c0c9686f5cbfaa4e7216c0d6f6baaa6864828fc644f67e11f2339e4` |
| 4 | `structure` | [CertifiedFrontierLeaf](../../../../Combinatorics/ResolverFrontierUnknownKind.lean/declarations/certifiedfrontierleaf.md) | 68 | `declaration-track:d02d01cf011557af42c3ad660aa15cad9bdef0e6d929dba1c9be9066dcafd023` |
| 5 | `structure` | [FiniteResolverCut](../../../../Combinatorics/ResolverFrontierUnknownKind.lean/declarations/finiteresolvercut.md) | 99 | `declaration-track:f495b5b163148457bbdabff3603fec8a1fc842cd577b157a00bd022b8c02bb0b` |
| 6 | `def` | [resolve](../../../../Combinatorics/ResolverFrontierUnknownKind.lean/declarations/resolve.md) | 125 | `declaration-track:b05b48565d57256b531aebf4721ac5050b3412c478cdaffb51e870ac6064fc41` |
| 7 | `theorem` | [finite_certified_resolver_total](../../../../Combinatorics/ResolverFrontierUnknownKind.lean/declarations/finite-certified-resolver-total.md) | 151 | `result-track:3627aa65a9f8995dbdb193da4ecedb66c38d215ec086bf655541c2ee17e21907` |
| 8 | `theorem` | [resolver_rejected_only_from_structure](../../../../Combinatorics/ResolverFrontierUnknownKind.lean/declarations/resolver-rejected-only-from-structure.md) | 165 | `result-track:38011112bcf9cb9d13013002eb6f4f430463ccbcac3035949e46c13f3e8bc4e0` |
| 9 | `theorem` | [resolver_unknown_has_named_frontier](../../../../Combinatorics/ResolverFrontierUnknownKind.lean/declarations/resolver-unknown-has-named-frontier.md) | 202 | `result-track:a9f5aeb0e86b82c7d64f9f6d1b24e9083709103f32f8c99c3fc4a7f727d35b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=53d8fa4c36ab10c682ff736ea0575b95375d413a33cc6d7a0509f98618f3e610 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variantd11d1453ad8cc4fcf8ea2f217c87c6c849e9543bbc8ff791a4fa16cfd240c370.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Resolver/Variantd11d1453ad8cc4fcf8ea2f217c87c6c849e9543bbc8ff791a4fa16cfd240c370.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
