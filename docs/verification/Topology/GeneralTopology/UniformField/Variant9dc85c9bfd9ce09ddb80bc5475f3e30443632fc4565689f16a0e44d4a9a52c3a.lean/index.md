# Verification target: GRWTSK.Topology.GeneralTopology.UniformField.Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29357e36903c9043687627edefc84cc323ef6eea",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29357e36903c9043687627edefc84cc323ef6eea`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompletableTopField](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/completabletopfield--5e6466bc1205adba6781d53c.md) | 50 | `declaration-track:5e6466bc1205adba6781d53c4775f1ecf5aa1516129a634d3dd4d948cbb62423` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/instance--4e77ea1478f1b826a14c5b80.md) | 57 | `declaration-track:4e77ea1478f1b826a14c5b803fedaf79705f85c78f174b8835a96298bba52e23` |
| 3 | `def` | [hatInv](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/hatinv--3a76af4860ecc6fa63b8b112.md) | 63 | `declaration-track:3a76af4860ecc6fa63b8b1124ce0d30c2a4a5f44189eb00cfa64def2035156b1` |
| 4 | `theorem` | [continuous_hatInv](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/continuous-hatinv--350b85a2adf568589019de12.md) | 67 | `result-track:350b85a2adf568589019de125a6953ca770304c7f0be78c2140e50c92ba4fbe0` |
| 5 | `instance` | [instInvCompletion](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/instinvcompletion--327d1386e0150fa80f1c6b03.md) | 97 | `declaration-track:327d1386e0150fa80f1c6b03ffc05ff663f44c0585615041a86b80234ad75d6c` |
| 6 | `theorem` | [hatInv_extends](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/hatinv-extends--cca99cf54e4640e3413c210b.md) | 102 | `result-track:cca99cf54e4640e3413c210ba68eebc46ceabd59152d201c6b179403c9af4e5b` |
| 7 | `theorem` | [coe_inv](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/coe-inv--102a9156b1d22677cef3e78e.md) | 108 | `result-track:102a9156b1d22677cef3e78e6ac5483370a9c370baba8cfd9f806f64e983c5c2` |
| 8 | `theorem` | [mul_hatInv_cancel](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/mul-hatinv-cancel--751638d4325f979b2f4ea236.md) | 121 | `result-track:751638d4325f979b2f4ea23681a7ac136c6d5fc58ff868080900987479452184` |
| 9 | `instance` | [instField](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/instfield--6f125b65c2205cd46e2d7feb.md) | 147 | `declaration-track:6f125b65c2205cd46e2d7febd2f2665ab3439b3a15516e2b6ddd1cbd1fbdef99` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/instance--003b10678cd08226e475f458.md) | 157 | `declaration-track:003b10678cd08226e475f458ba82055c97c73bb44139b1d8f037eabe335a7990` |
| 11 | `instance` | [Subfield.completableTopField](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/subfield-completabletopfield--5cbbdae99e218c467e81aee3.md) | 176 | `declaration-track:5cbbdae99e218c467e81aee3c2c55aee92d2583327c39b27a1d57d9e9615f0fb` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/instance--a45e384a3f22f24b671f3de9.md) | 185 | `declaration-track:a45e384a3f22f24b671f3de9e66274730988e14e986dedfbf20ac9134f995b40` |
| 13 | `theorem` | [IsUniformInducing.completableTopField](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/declarations/isuniforminducing-completabletopfield--1dffd1261e93db8929128b5b.md) | 204 | `result-track:1dffd1261e93db8929128b5b711eb35f9015a8159051c26a5fc767e732dce6fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
