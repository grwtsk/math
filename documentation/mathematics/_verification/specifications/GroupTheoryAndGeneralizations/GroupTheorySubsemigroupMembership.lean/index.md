# Verification target: Group Theory Subsemigroup Membership

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f00b08027bb80dcd65b1b146532c39195bce6b8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Membership/Variant6e2003bb7c6a8b7e38a34d4112967ef4b626b2b2dfdb8a0caec7867567cf1924.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f00b08027bb80dcd65b1b146532c39195bce6b8`.

Source path: `GRWTSK/Algebra/GroupTheory/Membership/Variant6e2003bb7c6a8b7e38a34d4112967ef4b626b2b2dfdb8a0caec7867567cf1924.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Membership/Variant6e2003bb7c6a8b7e38a34d4112967ef4b626b2b2dfdb8a0caec7867567cf1924.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subsemigroup.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_iSup_of_directed](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/declarations/mem-isup-of-directed.md) | 45 | `result-track:f4ef8dac1d065af95d4adb677b62c2d554ca25cd514b1410970995acdd088cdd` |
| 2 | `theorem` | [coe_iSup_of_directed](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/declarations/coe-isup-of-directed.md) | 58 | `result-track:b6e76b9915978a16ca6dfb4c73c3a97cf62a9644fbaa03b7bce25b175e8b6fb8` |
| 3 | `theorem` | [mem_sSup_of_directed_on](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/declarations/mem-ssup-of-directed-on.md) | 65 | `result-track:4976d9b27d04c1cb3b2e91014f00a1ba9048371bcd77513b26e67b18139c9a54` |
| 4 | `theorem` | [coe_sSup_of_directed_on](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/declarations/coe-ssup-of-directed-on.md) | 73 | `result-track:af3d080dd3540ea9f8d3e3c38a6ae54f9527bf46d033c0c08519b4aaeb93271a` |
| 5 | `theorem` | [mem_sup_left](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/declarations/mem-sup-left.md) | 80 | `result-track:2ee3efdd915a85714f7a6b9b80a3af481b5e6cb170f09a5c0780fae6f1c2e352` |
| 6 | `theorem` | [mem_sup_right](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/declarations/mem-sup-right.md) | 87 | `result-track:1e3ebddd51a00f05452458bc28b482fec603236d770b8e7d47af9fc2e9f3c0e4` |
| 7 | `theorem` | [mul_mem_sup](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/declarations/mul-mem-sup.md) | 94 | `result-track:df706167ad34c47c10ff350eebd1a09664b2d2f5ad4d9d17d36bfff5cf637ef0` |
| 8 | `theorem` | [mem_iSup_of_mem](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/declarations/mem-isup-of-mem.md) | 100 | `result-track:e0bd41dad0c3ae5d1080ace29956e240b583376b9a1acc5c4702d88eb8f0eaeb` |
| 9 | `theorem` | [mem_sSup_of_mem](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/declarations/mem-ssup-of-mem.md) | 107 | `result-track:3a8fbf012bc5875d259900a4c9e168933e49f35db37ac8b100456e81357983af` |
| 10 | `theorem` | [iSup_induction](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/declarations/isup-induction-source-edition-2.md) | 121 | `result-track:c904e83d9fc92bd780547b31ef7de311831ca571bd9a17ac9e8e0b667e79da45` |
| 11 | `theorem` | [iSup_induction'](../../../../GroupTheoryAndGeneralizations/GroupTheorySubsemigroupMembership.lean/declarations/isup-induction.md) | 133 | `result-track:b6037f50d248f51dfc31a4ad5674bbb19c03ee93c6a9276008e2389c165423ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26f8b61ed9155fd6c4b883c9ab4068d03a92a28ae6b8cdd74bff5539090cdb95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Membership/Variant6e2003bb7c6a8b7e38a34d4112967ef4b626b2b2dfdb8a0caec7867567cf1924.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Membership/Variant6e2003bb7c6a8b7e38a34d4112967ef4b626b2b2dfdb8a0caec7867567cf1924.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
