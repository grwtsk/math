# Verification target: Infinite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e54dcbced2dc3324deebac70c173bdf7908458e0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/index.md) · [Full source](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e54dcbced2dc3324deebac70c173bdf7908458e0`.

Source path: `GRWTSK/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.KrullTopology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.GaloisClosure` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.ClosedSubgroup` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fixingSubgroup_isClosed](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/declarations/fixingsubgroup-isclosed.md) | 58 | `result-track:7d1f55fae0b032b7c75aa3578f5726b9e01fb88827fd2db2d0968dd7f6c78ad4` |
| 2 | `lemma` | [fixedField_fixingSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/declarations/fixedfield-fixingsubgroup.md) | 79 | `result-track:d079bea6ba03a4e4668a83e2617879949e5e889c45397d13e872e2898d173199` |
| 3 | `lemma` | [fixedField_bot](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/declarations/fixedfield-bot.md) | 100 | `result-track:881bfe8884a30c42a45b88fad59db506af64f96c78f6a9e0cf47f3c2ed38db56` |
| 4 | `lemma` | [restrict_fixedField](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/declarations/restrict-fixedfield.md) | 107 | `result-track:ed6818b451bcad4cab76a36904ca21195554e58e4ca37290bd1b7956d04e66ba` |
| 5 | `lemma` | [fixingSubgroup_fixedField](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/declarations/fixingsubgroup-fixedfield.md) | 132 | `result-track:0d51451d682331deddd683d041fb60e4dee9d498a288e7ebada4eac47d9bd223` |
| 6 | `def` | [IntermediateFieldEquivClosedSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/declarations/intermediatefieldequivclosedsubgroup.md) | 182 | `declaration-track:9d7ef49faa396ba8411bb34691b48570b5054970610785d7fd5c2a2255468902` |
| 7 | `def` | [GaloisInsertionIntermediateFieldClosedSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/declarations/galoisinsertionintermediatefieldclosedsubgroup.md) | 195 | `declaration-track:101d61ce5597458d614a07688253a81951022a8be39d2a17f92ebee25f6e52c7` |
| 8 | `def` | [GaloisCoinsertionIntermediateFieldSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/declarations/galoiscoinsertionintermediatefieldsubgroup.md) | 203 | `declaration-track:ed6096afac8578cd505ba44ad47f416d22f8c27a85540109a8ecc6816cf37777` |
| 9 | `theorem` | [isOpen_iff_finite](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/declarations/isopen-iff-finite.md) | 212 | `result-track:c8e62ef89a2472e9c67a64416fb2dd22e7b79ac8cf761ca6e255e204df5f5a05` |
| 10 | `theorem` | [normal_iff_isGalois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/declarations/normal-iff-isgalois.md) | 232 | `result-track:9b699c219812080fc0a32505dcd8e4cb20a5738075b3f1bcf6ab9966a4c4868a` |
| 11 | `theorem` | [isOpen_and_normal_iff_finite_and_isGalois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/Infinite.lean/declarations/isopen-and-normal-iff-finite-and-isgalois.md) | 261 | `result-track:b0f072f491c8df21807664c64bbd96c41526486fa30bb6e95965f030c2f3158b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c79b224aec39234cd0fc55105aa4766f56399dbc23eddccf21b06333cd56fd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
