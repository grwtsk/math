# Verification target: GRWTSK.Topology.GeneralTopology.ValuedField.Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e148a8c8378586271f6a9aa85abcc85a35730e8f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e148a8c8378586271f6a9aa85abcc85a35730e8f`.

Source path: `GRWTSK/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Valued.ValuationTopology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.WithZeroTopology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformField` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Valuation.inversion_estimate](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/valuation-inversion-estimate--16d4874aaf38f8df1e1969d4.md) | 49 | `result-track:16d4874aaf38f8df1e1969d4c3a0fe40539f7d9d61948e6999eae504332f2211` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/instance--448312b8c648f7bd21aaa041.md) | 78 | `declaration-track:448312b8c648f7bd21aaa0418d9b2e14ed6d759a92bccbc5d83b9e4e2cf741ab` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/instance--75ed9d7202ee10ac0f89b986.md) | 96 | `declaration-track:75ed9d7202ee10ac0f89b986738ca147da6f354a47e272d84db3983da8f64670` |
| 4 | `theorem` | [Valued.continuous_valuation](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/valued-continuous-valuation--969c4df77db77e28ce38321c.md) | 112 | `result-track:969c4df77db77e28ce38321cdb9a9cf024bcc0d6d24bb9eb7d1a9f99bab3c746` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/instance--dd3d0237aedc49c21cbb47d6.md) | 139 | `declaration-track:dd3d0237aedc49c21cbb47d6159261612dc1f0c33c91d81713465a232e4d6d7b` |
| 6 | `def` | [extension](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/extension--33c434214748f7dabaa99525.md) | 189 | `declaration-track:33c434214748f7dabaa99525b913a0157f2c192cb79441cb6e5380b1d3a014cd` |
| 7 | `theorem` | [continuous_extension](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/continuous-extension--e81072dc638975ab2c1ca313.md) | 192 | `result-track:e81072dc638975ab2c1ca313baa5bbffaacaa0c0103d42a27b3d7c22134c5f3e` |
| 8 | `theorem` | [extension_extends](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/extension-extends--4957033b7382824fe4f9d83b.md) | 266 | `result-track:4957033b7382824fe4f9d83b1ff38b7b4fae484c8fa631887641eadd0cb7007d` |
| 9 | `def` | [extensionValuation](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/extensionvaluation--3abe1a4ed5776fc490c3bc53.md) | 272 | `declaration-track:3abe1a4ed5776fc490c3bc534d9df7b4a3148137266b8d8838c0e122d7f792db` |
| 10 | `theorem` | [closure_coe_completion_v_lt](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/closure-coe-completion-v-lt--4cb8d0a43fccca5a0c278f95.md) | 306 | `result-track:4cb8d0a43fccca5a0c278f95b26e39014d99d31639be62742059340b2f175d7d` |
| 11 | `instance` | [valuedCompletion](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/valuedcompletion--217c0439d040584c15cb7763.md) | 332 | `declaration-track:217c0439d040584c15cb7763126eab2ecd504b5ab18a35b41e43d861d1aa6ba6` |
| 12 | `theorem` | [valuedCompletion_apply](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/valuedcompletion-apply--1b60ec135f70a55fe5502a8f.md) | 343 | `result-track:1b60ec135f70a55fe5502a8f634880427d5fe9ec9a919ee6515708276779c353` |
| 13 | `def` | [integer](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/integer--75824a7b11f6ff8aaffa62d5.md) | 358 | `declaration-track:75824a7b11f6ff8aaffa62d5cda65cd3845941935f720ebdd25c9eaa3b428229` |
| 14 | `def` | [maximalIdeal](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/maximalideal--6fb6207590d4325307252a78.md) | 366 | `declaration-track:6fb6207590d4325307252a7889b4d149cda3ade6740740c899831ecbd3856fcf` |
| 15 | `def` | [ResidueField](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant9b9c0075cf2b0507d6f71eb1a0f64babc1455c8e3543e5edf1d265b97943bbc1.lean/declarations/residuefield--d5010b14945cc19d4d91ac84.md) | 374 | `declaration-track:d5010b14945cc19d4d91ac84b6dffe62bfe9fd92875dbe878bda7e3475e7c9d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
