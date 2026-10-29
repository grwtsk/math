# Verification target: Erased

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "109c4af01328abb9ffae7a2dea132d7c7e9cd616",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant1612f13ea10441d4fc3af07025b60a0a0d617bad294ae22da9f5521e4067ce8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `109c4af01328abb9ffae7a2dea132d7c7e9cd616`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant1612f13ea10441d4fc3af07025b60a0a0d617bad294ae22da9f5521e4067ce8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant1612f13ea10441d4fc3af07025b60a0a0d617bad294ae22da9f5521e4067ce8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Erased](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/erased.md) | 23 | `declaration-track:001dcdf7309d8ad9463d24d4c5a847e7f0cceeac591f1bd43fb30f2548d873d4` |
| 2 | `def` | [mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/mk.md) | 30 | `declaration-track:a53b2f49b8a66131c0b5a558d2cd87728145e327dbdd8822e56007d47916400d` |
| 3 | `def` | [out](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/out.md) | 34 | `declaration-track:3a63e91c53c7de1479db587654d655e42dcffb5710c18a51a2ea93fdf5331a26` |
| 4 | `abbrev` | [OutType](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/outtype.md) | 41 | `declaration-track:87bd31b7bfa319b768a9358a7e1448e4f4a341e240014cabeb1eae3d25a7f35a` |
| 5 | `theorem` | [out_proof](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/out-proof.md) | 45 | `result-track:72628573b1fd128d250df992f68ceebf5490d8c35ebc3256db0bb9d6a2050a97` |
| 6 | `theorem` | [out_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/out-mk.md) | 49 | `result-track:fc70729c000235cccfbf38f27d68a7d5606e8601774eed09e054fde84a3ce035` |
| 7 | `theorem` | [mk_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/mk-out.md) | 55 | `result-track:2bd343fe1dc9b7d2bd47d47d2c01c484d36b1b6d4d469a4e252eff91b8248c53` |
| 8 | `theorem` | [out_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/out-inj.md) | 59 | `result-track:ac7c4bde41f49e51eafbc02278086352cd78411594fa7b7f01697e4c82985acb` |
| 9 | `def` | [equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/equiv.md) | 62 | `declaration-track:c1ffe92eff1c1da87c59ef2d0cc1d2525c290093f70b7b92cc2da1e0e679fdee` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/instance.md) | 65 | `declaration-track:2bdf4b6e5e128b97d6e59b0c1d682733188d303b4d01323edf54b47bce9cd2d7` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/instance-source-edition-3.md) | 68 | `declaration-track:fd63b093f7be845e06e017df6be1bf7bcb1f6234f897337c8baffd5ba25628d5` |
| 12 | `def` | [choice](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/choice.md) | 72 | `declaration-track:2bb888c272a6bf74319565c7379f497b6c160ebd8f49b702ae014af254404247` |
| 13 | `theorem` | [nonempty_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/nonempty-iff.md) | 76 | `result-track:f63a09ac616b00844a45a7259eab35378fcb703c1554af1ce2a0f30e45ee9750` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/instance-source-edition-2.md) | 79 | `declaration-track:a5501ac67918fb34bf28485e2eb67a0fd376e608b49e4a259c1f7cb46bcb358d` |
| 15 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/bind.md) | 87 | `declaration-track:b7675b1589224233a781c3285b01b2a1ec73b1da37b92e571bab1423da9ebcca` |
| 16 | `theorem` | [bind_eq_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/bind-eq-out.md) | 91 | `result-track:b581aeb5c0c9994535bba6356ee0436fdf27f145a986854568b1c0dfed306c69` |
| 17 | `def` | [join](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/join.md) | 95 | `declaration-track:d2578db4efeaa2d5c7ca4f8784d2335a76d5cdde81cac52839a7258f7fe73144` |
| 18 | `theorem` | [join_eq_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/join-eq-out.md) | 99 | `result-track:7a44b25ee6fcf3aab74b13d2e313183c51894ed3b0895fc0fde9c2768d89d352` |
| 19 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/map.md) | 107 | `declaration-track:fdfc6235be52c24a8854457029046715cef86aab4fbdc312eaf3511966714666` |
| 20 | `theorem` | [map_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/map-out.md) | 111 | `result-track:c375764c611c11bcff563438eda2b180e25fb830f1b3ef2d5be2e73903a42464` |
| 21 | `instance` | [Monad](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/monad.md) | 113 | `declaration-track:a49c398c3c9d75094b3135be26fc2c5b833d80edca75005548dde33d6e47b8c0` |
| 22 | `theorem` | [pure_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/pure-def.md) | 119 | `result-track:311d32355bfc37e861bf398fc25948aebcc291c46569c2f682cbf3c40da3207d` |
| 23 | `theorem` | [bind_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/bind-def.md) | 123 | `result-track:b8003cec4150e2b84a3265c381195736435cebbf5307b1f7deb7334fc3965d34` |
| 24 | `theorem` | [map_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/map-def.md) | 127 | `result-track:f60cf2b482a13b1cc7bf1c7f4fdc65be177280ead190e56a821b6fb1063d51a8` |
| 25 | `instance` | [instLawfulMonad](../../../../../../ComputerScience/TheoryOfData/DataStructures/Erased.lean/declarations/instlawfulmonad.md) | 130 | `declaration-track:391b50fa833ca08b3a9ad9ea9cfb600e4d3d8f78bb7be4b3cee0081b951f60fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e20689c24910ff53ce23bacc859d6f7b442c3ba0e002feeb398288dbc3a84954 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant1612f13ea10441d4fc3af07025b60a0a0d617bad294ae22da9f5521e4067ce8c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant1612f13ea10441d4fc3af07025b60a0a0d617bad294ae22da9f5521e4067ce8c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
