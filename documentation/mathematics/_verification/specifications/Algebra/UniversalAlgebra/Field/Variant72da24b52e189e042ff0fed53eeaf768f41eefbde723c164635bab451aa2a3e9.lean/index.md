# Verification target: GRWTSK.Algebra.UniversalAlgebra.Field.Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca15f842db126fec108024fa3eed83552fe4cba3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean/index.md) · [Full source](../../../../../../Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca15f842db126fec108024fa3eed83552fe4cba3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_inv_le_one](../../../../../../Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean/declarations/cast-inv-le-one--5d05b9e5ea2b79506a7eb6f9.md) | 23 | `result-track:5d05b9e5ea2b79506a7eb6f9911a92bf2296ed072a2bea53abe04b9cec0ddc40` |
| 2 | `theorem` | [cast_div_le](../../../../../../Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean/declarations/cast-div-le--b756f68cb3580bb4790e4403.md) | 28 | `result-track:b756f68cb3580bb4790e4403065199ea56ab1cf7d26b3713dd0e3dd98191e011` |
| 3 | `theorem` | [inv_pos_of_nat](../../../../../../Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean/declarations/inv-pos-of-nat--d819daca3c0ddac2245b70f0.md) | 35 | `result-track:d819daca3c0ddac2245b70f0f0ce48a474887ce78c732863d180a85eb9e80e87` |
| 4 | `theorem` | [one_div_pos_of_nat](../../../../../../Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean/declarations/one-div-pos-of-nat--9658b404647c292fdd3fcc1d.md) | 38 | `result-track:9658b404647c292fdd3fcc1d4ea19ad7442013f9ab3625d179e11f75b871cecf` |
| 5 | `theorem` | [one_div_le_one_div](../../../../../../Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean/declarations/one-div-le-one-div--3d97228e74fa3fbade0f64af.md) | 42 | `result-track:3d97228e74fa3fbade0f64afc3e5194e878724b2faaccde87d491c3a841a1083` |
| 6 | `theorem` | [one_div_lt_one_div](../../../../../../Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean/declarations/one-div-lt-one-div--c28116eed789e257a5cfd6e7.md) | 47 | `result-track:c28116eed789e257a5cfd6e7a5d6c04d59369413aaeb8bb8f053614d1a1a4239` |
| 7 | `theorem` | [one_div_cast_pos](../../../../../../Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean/declarations/one-div-cast-pos--cbbcc0b989bc095f2e5f97ad.md) | 52 | `result-track:cbbcc0b989bc095f2e5f97ad91669ed5d9ccebf62d9740b845dc7f70956799b2` |
| 8 | `theorem` | [one_div_cast_nonneg](../../../../../../Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean/declarations/one-div-cast-nonneg--1f5f9ca04472fc9e17e8708e.md) | 55 | `result-track:1f5f9ca04472fc9e17e8708eee4cf22b49ed8e5ff7c1ef1bd7c9e72b23db7c86` |
| 9 | `theorem` | [one_div_cast_ne_zero](../../../../../../Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean/declarations/one-div-cast-ne-zero--d01bdf11990f834f239ecf30.md) | 57 | `result-track:d01bdf11990f834f239ecf308ceb9181367d389a7d42480dc45d9890e87d99fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f4fffb414c020aa3522fa89f71d2eb01ebc612d05647e65a0295ca70272bb8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Field/Variant72da24b52e189e042ff0fed53eeaf768f41eefbde723c164635bab451aa2a3e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
