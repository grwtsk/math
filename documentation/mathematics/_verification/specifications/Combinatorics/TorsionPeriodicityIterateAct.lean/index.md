# Verification target: Torsion Periodicity Iterate Act

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d37d207f42035e9f1c4f852045715d4c8307a6ff",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variant3542a86818e4040f523d35925fb9949a15344f23b15766fa5c6305bfab4579ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/TorsionPeriodicityIterateAct.lean/index.md) · [Full source](../../../../Combinatorics/TorsionPeriodicityIterateAct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d37d207f42035e9f1c4f852045715d4c8307a6ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variant3542a86818e4040f523d35925fb9949a15344f23b15766fa5c6305bfab4579ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variant3542a86818e4040f523d35925fb9949a15344f23b15766fa5c6305bfab4579ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Monodromy.CatalanTransport` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iterateAct](../../../../Combinatorics/TorsionPeriodicityIterateAct.lean/declarations/iterateact.md) | 21 | `declaration-track:f85a2decc8eb2d90cd8206bf0e81440d48a10197a35b8217e1ebd4a9a4de3b4f` |
| 2 | `theorem` | [iterateAct_zero](../../../../Combinatorics/TorsionPeriodicityIterateAct.lean/declarations/iterateact-zero.md) | 33 | `result-track:6de5a37fb1fc47be409ce3d7435a750d29dfd1fcf0d543264dc0b460dd54412c` |
| 3 | `theorem` | [iterateAct_succ](../../../../Combinatorics/TorsionPeriodicityIterateAct.lean/declarations/iterateact-succ.md) | 45 | `result-track:578c138dd0b451c36b112171518179a3339e47204c3eb6576dc516ffebede471` |
| 4 | `theorem` | [act_nsmulPoint_apply](../../../../Combinatorics/TorsionPeriodicityIterateAct.lean/declarations/act-nsmulpoint-apply.md) | 58 | `result-track:8e18f934063513c64fe010640a48e00e9676bb11150189ce7cfcc60e3aebe33e` |
| 5 | `def` | [HasPeriodDividing](../../../../Combinatorics/TorsionPeriodicityIterateAct.lean/declarations/hasperioddividing.md) | 79 | `declaration-track:f1654c5d7c60eb6a1cafb9d344e9c72b8d1c52deeb2f98aa43f5f0d57ffde776` |
| 6 | `theorem` | [period_dividing_of_nsmul_eq_zero](../../../../Combinatorics/TorsionPeriodicityIterateAct.lean/declarations/period-dividing-of-nsmul-eq-zero.md) | 89 | `result-track:b2ae6bbff6446fee447cacea0869cba77fdfa1cf80b0e3a107b5c5095080cb41` |
| 7 | `theorem` | [period_dividing_of_hasOrder](../../../../Combinatorics/TorsionPeriodicityIterateAct.lean/declarations/period-dividing-of-hasorder.md) | 105 | `result-track:fb9ca6a1a9c6e904cf97ded746532cf48311cd5506a35a48fe74e6e590efd52f` |
| 8 | `theorem` | [exists_period_dividing_of_isTorsion](../../../../Combinatorics/TorsionPeriodicityIterateAct.lean/declarations/exists-period-dividing-of-istorsion.md) | 117 | `result-track:bd66fc68d2ea82440e52ea120987c289d90a454ace9275f44101160fd8ddc3cd` |
| 9 | `theorem` | [catalan_torsion_period_dividing_of_hasOrder](../../../../Combinatorics/TorsionPeriodicityIterateAct.lean/declarations/catalan-torsion-period-dividing-of-hasorder.md) | 131 | `result-track:df39260ab25e848f423f7f7f82d1db403c68c804a375ec1485d8f6edaebea748` |
| 10 | `theorem` | [catalan_torsion_period_on_transported_of_hasOrder](../../../../Combinatorics/TorsionPeriodicityIterateAct.lean/declarations/catalan-torsion-period-on-transported-of-hasorder.md) | 145 | `result-track:6d9749dd472fdd20f9b14da3d2ab43526fbb5b3599db2113249432766839a7b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1de242cdd01ab061cf0aa8dd9170ad85c365c7d6b74a4cc34a8c6ed99999381c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variant3542a86818e4040f523d35925fb9949a15344f23b15766fa5c6305bfab4579ee.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variant3542a86818e4040f523d35925fb9949a15344f23b15766fa5c6305bfab4579ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
