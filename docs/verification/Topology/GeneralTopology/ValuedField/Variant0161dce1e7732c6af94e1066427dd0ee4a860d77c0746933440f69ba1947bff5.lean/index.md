# Verification target: GRWTSK.Topology.GeneralTopology.ValuedField.Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04468df6fcf43ae24f6e5230954b65e05e908a7b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04468df6fcf43ae24f6e5230954b65e05e908a7b`.

Source path: `GRWTSK/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Valued.ValuationTopology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.WithZeroTopology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformField` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Valuation.inversion_estimate](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/valuation-inversion-estimate--fbcac1ece3cef5254090a355.md) | 57 | `result-track:fbcac1ece3cef5254090a35572d207f23a3111d2ec952453cdfc0adbfd8b45f9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/instance--f47040e02585a81c3ce3d5af.md) | 86 | `declaration-track:f47040e02585a81c3ce3d5af095323f1980bb6686b742768fafd4ea982f016f4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/instance--ab9243505a4035eaf005a762.md) | 104 | `declaration-track:ab9243505a4035eaf005a7627294f9820d0fc48023de0e21ac6f115ded7fb403` |
| 4 | `theorem` | [Valued.continuous_valuation](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/valued-continuous-valuation--9b2bd67ce8f25056fd11285f.md) | 120 | `result-track:9b2bd67ce8f25056fd11285fd72861f6842d9e7d3e997a5a51e5af2f23a6363d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/instance--42db221cc9c295720f8a1167.md) | 147 | `declaration-track:42db221cc9c295720f8a116764c0436a58b6949033bfa11889404b2f243357d7` |
| 6 | `def` | [extension](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/extension--3c5fb2a5b90d94f7a53d5782.md) | 197 | `declaration-track:3c5fb2a5b90d94f7a53d5782ab3e4735f32c75178c757f7778cf30a744255901` |
| 7 | `theorem` | [continuous_extension](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/continuous-extension--8d746e5c34b7f33cdab4c5cd.md) | 200 | `result-track:8d746e5c34b7f33cdab4c5cd9f21d1b6b3fad645597c26d36d695330029f02b9` |
| 8 | `theorem` | [extension_extends](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/extension-extends--322531a358a6c31975749ad3.md) | 274 | `result-track:322531a358a6c31975749ad3655027826c2ae6043a17d8e45c25bdc4c5a92ff5` |
| 9 | `def` | [extensionValuation](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/extensionvaluation--7c6f9beed1b9720fb2142550.md) | 280 | `declaration-track:7c6f9beed1b9720fb2142550a6b96eb24b98a8b9ce8ac8d40a61ef59e944dbfb` |
| 10 | `theorem` | [closure_coe_completion_v_lt](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/closure-coe-completion-v-lt--4c86dbabcf234adc89017b07.md) | 314 | `result-track:4c86dbabcf234adc89017b0747d06d19f31eb9c8f4436993ad11e02d5667b34e` |
| 11 | `instance` | [valuedCompletion](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/valuedcompletion--0df39b4a44a3965198caf5d6.md) | 340 | `declaration-track:0df39b4a44a3965198caf5d6742f308bd724163a0560996f54e440fdb2dda385` |
| 12 | `theorem` | [valuedCompletion_apply](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/valuedcompletion-apply--615a1a1f904a36e89ef44884.md) | 351 | `result-track:615a1a1f904a36e89ef44884c16125752b379823dc81752b8f4f1c24270d6849` |
| 13 | `def` | [integer](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/integer--5fbf72faa925a9b36f628987.md) | 366 | `declaration-track:5fbf72faa925a9b36f628987cfd1cace520fb6655ded8f0f6aa99322d28bb0d3` |
| 14 | `def` | [maximalIdeal](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/maximalideal--f885d9e9c0eba9692cc5621c.md) | 374 | `declaration-track:f885d9e9c0eba9692cc5621c480f50624925edb9bf9fbb560cf8ba0230de054b` |
| 15 | `def` | [ResidueField](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/declarations/residuefield--25d451debfffca66850a7c1b.md) | 382 | `declaration-track:25d451debfffca66850a7c1b6ed5620ec5cfd033a2be71cc98b8b05ac2ef6016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
