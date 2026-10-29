# Verification target: GRWTSK.Topology.GeneralTopology.Periodic.Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd04e43cf7875b14a9e9ea42fa0f4aaaba11cc0e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean/index.md) · [Full source](../../../../../../Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd04e43cf7875b14a9e9ea42fa0f4aaaba11cc0e`.

Source path: `GRWTSK/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Periodic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Count` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Interval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [periodic_gcd](../../../../../../Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean/declarations/periodic-gcd--df0fe5b5f4c352fc25b2e673.md) | 32 | `result-track:df0fe5b5f4c352fc25b2e673e44138c68e01a2057c6024944f0afcfb9c8f3e4b` |
| 2 | `theorem` | [periodic_coprime](../../../../../../Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean/declarations/periodic-coprime--d0f2e8da8d4894e77c8eddd0.md) | 36 | `result-track:d0f2e8da8d4894e77c8eddd0ad1a7895920152cbb41da8849d1d33ee72eb6cab` |
| 3 | `theorem` | [periodic_mod](../../../../../../Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean/declarations/periodic-mod--8e32bedb40dd1a6f1ae57d99.md) | 40 | `result-track:8e32bedb40dd1a6f1ae57d9905eb4352e6ce758d8f368d1c3b0945b6b0cbcdf0` |
| 4 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.PeriodicGcd.Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.Function.Periodic.map_mod_nat](../../../../../../Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean/declarations/root-grwtsk-topology-generaltopology-periodicgcd-variant91f15ad43dfbc77d--50700a5969e9e4af49658000.md) | 44 | `result-track:50700a5969e9e4af49658000b922c42863cac3a87ac15a870863419312876209` |
| 5 | `theorem` | [filter_multiset_Ico_card_eq_of_periodic](../../../../../../Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean/declarations/filter-multiset-ico-card-eq-of-periodic--f35f297b9ca398c37d43500d.md) | 55 | `result-track:f35f297b9ca398c37d43500d23fc7cfa79c05e6307ae2e79c462ce60a9f38b1e` |
| 6 | `theorem` | [filter_Ico_card_eq_of_periodic](../../../../../../Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean/declarations/filter-ico-card-eq-of-periodic--21f07d40cc553fc492949313.md) | 72 | `result-track:21f07d40cc553fc4929493133e2d518843ce86cb22af09a9d905f4e29892fdf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c878fabf118cd888967275f01c7fbe951b1b2b2285b891eeb2a9b9a9ea616fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Periodic/Variante0ab42bc4893ab36d97c2436b3977873949ff809e6ee05fd238df36686e9efaf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
