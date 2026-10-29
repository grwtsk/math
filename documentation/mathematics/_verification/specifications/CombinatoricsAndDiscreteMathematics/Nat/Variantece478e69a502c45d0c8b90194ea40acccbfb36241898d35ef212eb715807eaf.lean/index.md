# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Nat.Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24621b3f8523b160509be9f2712932cca0154a85",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean/index.md) · [Full source](../../../../../CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24621b3f8523b160509be9f2712932cca0154a85`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instWfDvdMonoid](../../../../../CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean/declarations/instwfdvdmonoid--01491f58aa6da18e38809482.md) | 30 | `declaration-track:01491f58aa6da18e3880948293297c5e5e533a4f22f365cbe084d611db37b69d` |
| 2 | `instance` | [instUniqueFactorizationMonoid](../../../../../CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean/declarations/instuniquefactorizationmonoid--4165a78928ad7d4931f48f07.md) | 46 | `declaration-track:4165a78928ad7d4931f48f0797852c5ae91ac243e2694eb923fbfe192919024b` |
| 3 | `lemma` | [factors_eq](../../../../../CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean/declarations/factors-eq--f116fc885a570d9359e8aa6a.md) | 51 | `result-track:f116fc885a570d9359e8aa6abdf91215f088568197f6c14c745e873cb437eff8` |
| 4 | `lemma` | [factors_multiset_prod_of_irreducible](../../../../../CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean/declarations/factors-multiset-prod-of-irreducible--8dc16080785485c88e138ca9.md) | 62 | `result-track:8dc16080785485c88e138ca9f40590ced4e798252f81a7eb45afba578e124ecb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99273c998561123f0b942bfaa6c0c3399422629db1894c53c3ba6c540a319d9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Nat/Variantece478e69a502c45d0c8b90194ea40acccbfb36241898d35ef212eb715807eaf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
