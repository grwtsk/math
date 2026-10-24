# Verification target: GRWTSK.Topology.GeneralTopology.Ring.Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8264f0a0b66b96753a79160481fe9d3c22ef714",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8264f0a0b66b96753a79160481fe9d3c22ef714`.

Source path: `GRWTSK/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Germ.OrderedMonoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [EventuallyLE.mul_le_mul](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean/declarations/eventuallyle-mul-le-mul--77985fb50804522bac09a0ad.md) | 28 | `result-track:77985fb50804522bac09a0ad14121a1141486e0364ede0d8e5d45f8c2953229f` |
| 2 | `theorem` | [EventuallyLE.mul_le_mul'](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean/declarations/eventuallyle-mul-le-mul--5d183a80b203bf7c452eca9c.md) | 34 | `result-track:5d183a80b203bf7c452eca9c91b77d1fd5a7466fe951120b7ebeb47bc8cbe4e7` |
| 3 | `theorem` | [EventuallyLE.mul_nonneg](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean/declarations/eventuallyle-mul-nonneg--f7599b55d63ac72a08638911.md) | 39 | `result-track:f7599b55d63ac72a086389111dba0ff77d7a975eaacf95b7ad427d3af3b10e18` |
| 4 | `theorem` | [eventually_sub_nonneg](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean/declarations/eventually-sub-nonneg--b225bed52b4ce329d5c19d8a.md) | 43 | `result-track:b225bed52b4ce329d5c19d8ad8dc35199806f18a084574357837348454c21e06` |
| 5 | `instance` | [instIsOrderedRing](../../../../../mathematics/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean/declarations/instisorderedring--c462b8e9667fd7865455ffda.md) | 52 | `declaration-track:c462b8e9667fd7865455ffdadb0ce26fe4d1c8dfb1152ef6e1ccbde8e561ed92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
