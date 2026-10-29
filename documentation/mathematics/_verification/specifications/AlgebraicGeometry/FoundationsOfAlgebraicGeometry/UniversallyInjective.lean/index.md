# Verification target: Universally Injective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad9c9061e77146d8668015a9736973e2640b677c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variant6e924be03bab3cde0a2dfc9a0b09b7eda18d34f37357fac059481f3620b94a51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad9c9061e77146d8668015a9736973e2640b677c`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variant6e924be03bab3cde0a2dfc9a0b09b7eda18d34f37357fac059481f3620b94a51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/UniversallyInjective/Variant6e924be03bab3cde0a2dfc9a0b09b7eda18d34f37357fac059481f3620b94a51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalAtTarget` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UniversallyInjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/declarations/universallyinjective.md) | 43 | `declaration-track:1cbe7b496f1b0a1a3262dfc9e12c4cb2535799be0c2ca51aa3661c49f96160ac` |
| 2 | `theorem` | [Scheme.Hom.injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/declarations/scheme-hom-injective.md) | 46 | `result-track:ecc24a5f276db934cfe31f0a2acb05996ca7d18ed6c07610b5060c647f5dfc6b` |
| 3 | `theorem` | [universallyInjective_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/declarations/universallyinjective-eq.md) | 50 | `result-track:f58e3dd104f23f055d54e1c616a40d1fa110a7a0fa830750880b6bcadcaab977` |
| 4 | `theorem` | [universallyInjective_eq_diagonal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/declarations/universallyinjective-eq-diagonal.md) | 54 | `result-track:a237d0e64c7560437e10c3478ec7c7de1ff8c1f66a7be1d3263a4c355477c784` |
| 5 | `theorem` | [UniversallyInjective.iff_diagonal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/declarations/universallyinjective-iff-diagonal.md) | 70 | `result-track:f44c5cb66cff223b090dfe5c8bc158c489a298503af4cd0f144c73cd084c718e` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/declarations/instance.md) | 74 | `declaration-track:79de25a31769c016748d82d0aa79b325fa01be8c77c5fb50f9b11e58267f6690` |
| 7 | `theorem` | [UniversallyInjective.respectsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/declarations/universallyinjective-respectsiso.md) | 78 | `result-track:336b8be3bf5e50cc6af010890f17712e2abbe5465fd425922b3fcb6e8fae2d61` |
| 8 | `instance` | [UniversallyInjective.isStableUnderBaseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/declarations/universallyinjective-isstableunderbasechange.md) | 81 | `declaration-track:27c4bf659cf229199600357bb2c0c37c080bfbbac1faf02eef0a95f55beca971` |
| 9 | `instance` | [universallyInjective_isStableUnderComposition](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/declarations/universallyinjective-isstableundercomposition.md) | 85 | `declaration-track:c76939f5ba48f0b32f85ebde27ef49ce31578f436da07c28f9a91ad6b89cc148` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/declarations/instance-source-edition-2.md) | 89 | `declaration-track:f3f2a5835f35e795c4fd4c9c81a7a57e6ecc3bcdf0cdf2fd09ee4ffd793ee8f6` |
| 11 | `instance` | [universallyInjective_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/UniversallyInjective.lean/declarations/universallyinjective-islocalattarget.md) | 92 | `declaration-track:377143418812114e3fd90830178051adaf6b07c69eb6a13f05e092df8ee9e195` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36bb08fb0be3f95670b95281ca72b5c6c8820283e872d178855734c280d83448 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variant6e924be03bab3cde0a2dfc9a0b09b7eda18d34f37357fac059481f3620b94a51.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/UniversallyInjective/Variant6e924be03bab3cde0a2dfc9a0b09b7eda18d34f37357fac059481f3620b94a51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
