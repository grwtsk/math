# Verification target: Hash Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fd085158201e3020a14d7fba802216b5b95c331",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant244127514d5a666d07523172673aa246d391d3606400d7926b4d90bc14e97339.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fd085158201e3020a14d7fba802216b5b95c331`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant244127514d5a666d07523172673aa246d391d3606400d7926b4d90bc14e97339.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant244127514d5a666d07523172673aa246d391d3606400d7926b4d90bc14e97339.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Hash256](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition1.lean/declarations/hash256.md) | 22 | `declaration-track:83ef4bf6d3aa1c45e22943bba0a04f76ed5b6bacc0242388929e69cdcdb52df1` |
| 2 | `def` | [lowerHexAlphabet](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition1.lean/declarations/lowerhexalphabet.md) | 28 | `declaration-track:cf96e36dced8c129ce2b79d9e8a05376fec8899bf2401f62ca7c6133e8ad98a3` |
| 3 | `def` | [IsLowerHexDigit](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition1.lean/declarations/islowerhexdigit.md) | 32 | `declaration-track:085b4e654222c5a7509b4c4c38f8089254282b60def8fa60ee390ebe9948847a` |
| 4 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition1.lean/declarations/instance.md) | 35 | `declaration-track:bea81a70bdc68cdeef8b0ad75d7822a49ebf2f28cd1a74cae049e781d2f75788` |
| 5 | `def` | [Hash256.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition1.lean/declarations/hash256-valid.md) | 42 | `declaration-track:49cc592aed4435a94178fe19b87d2fe060dc643c7f8eea6bf089676762504ea7` |
| 6 | `instance` | [instDecidableHash256Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition1.lean/declarations/instdecidablehash256valid.md) | 47 | `declaration-track:312f16e2f593cfe158cf77d1ec1aba0e3b065e1702fabec492af59d150385956` |
| 7 | `def` | [verifyHash256](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition1.lean/declarations/verifyhash256.md) | 52 | `declaration-track:b225c72a8956ced6ebfc917e77520a2eae3790d53a1f3d9c7ef1a7e935087866` |
| 8 | `theorem` | [verifyHash256_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition1.lean/declarations/verifyhash256-sound.md) | 57 | `result-track:c346ff7dc05a18f8a416f0eeaefe10f6173c97688344c3ce097344c08e5e4ccf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ccf54268af1c1e8dee48ab2567a6d694df01e838ce0fc57a1f5a961f54c7fa8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant244127514d5a666d07523172673aa246d391d3606400d7926b4d90bc14e97339.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant244127514d5a666d07523172673aa246d391d3606400d7926b4d90bc14e97339.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
