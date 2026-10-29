# Verification target: Set Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd285c52b9ce755ee776502bbc2efe0faf3c1d0a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3a35aa26e7bceff5650a12168f8efd5b07e203906ca554118b75eedf53da9584.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd285c52b9ce755ee776502bbc2efe0faf3c1d0a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3a35aa26e7bceff5650a12168f8efd5b07e203906ca554118b75eedf53da9584.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3a35aa26e7bceff5650a12168f8efd5b07e203906ca554118b75eedf53da9584.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Util.ExtendedBinder` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Term` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Set](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/set.md) | 52 | `declaration-track:e85e8595161f1970dac7e8b0a8f428a5c45efaaaccbc376a44f9f67e070b8b90` |
| 2 | `def` | [setOf](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/setof.md) | 55 | `declaration-track:edaca32a537d7f399300ca9eca21016d3b30d1244049658619bf2e8872da5007` |
| 3 | `def` | [Mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/mem.md) | 61 | `declaration-track:cb3a8ecd556e016b0de9e92edc594255d6ce611529c8e86e6acd614dbea5e9b3` |
| 4 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/instance-source-edition-6.md) | 64 | `declaration-track:7ad5914c7dd737f25d671728c5d94096ad312f269270dab506217a37ba024530` |
| 5 | `theorem` | [ext](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/ext.md) | 67 | `result-track:b920e42a35ab0fda8bf467dc21ffb07225e08c316d462256676d10e7be596bf7` |
| 6 | `def` | [Subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/subset.md) | 74 | `declaration-track:26cbd1923d29795703336e6fc6f4cc66830f7dd673897f5968a90cc5119a5860` |
| 7 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/instance-source-edition-3.md) | 79 | `declaration-track:2fc269d70b8a31dd3d05a8abf9e29411a194e3695820967732261068a06a8b58` |
| 8 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/instance-source-edition-4.md) | 82 | `declaration-track:64d473cb2a30ce63f755eaf26acb46791b910cca6d6ca9b2f80d97835c09c24c` |
| 9 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/instance-source-edition-10.md) | 85 | `declaration-track:f82b9cfa0ec35f764bc36122e81593026d0360c8c8dd45289cc4715569c94a91` |
| 10 | `syntax` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/syntax.md) | 104 | `declaration-track:6e6b1972a0420c61bf160cd0afeb03ac5bd634c3bfd2d90ec41ae40e70d2a10d` |
| 11 | `def` | [elabSetBuilder](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/elabsetbuilder.md) | 129 | `declaration-track:f41ae0014ae5c2db4af8e3bc001989c43189e7f1986851bced4733576c3537af` |
| 12 | `def` | [setOf.unexpander](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/setof-unexpander.md) | 140 | `declaration-track:a57722d46aad0cba46f5e52316c6086e424c95c88c52582b7ee07f49886d315c` |
| 13 | `macro` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/macro-source-edition-3.md) | 153 | `declaration-track:3aea95372bf0bc4cf4668a21f20d6c9d8e023a827331c2e4c705de8d65517aff` |
| 14 | `macro` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/macro.md) | 171 | `declaration-track:0b595dcc0489b04f8b765b7cd9d429817bc350865731b8fd8393bc298ec2bef2` |
| 15 | `macro` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/macro-source-edition-2.md) | 176 | `declaration-track:2831f15e5635378320da13556fd83a7907fb9a221fbaae3d644ddef84a6980fd` |
| 16 | `def` | [setOfPatternMatchUnexpander](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/setofpatternmatchunexpander.md) | 181 | `declaration-track:59def47ffce9ef49e378a5b1efbedbb16b40ae5f0df3aa3d4c026ce06000cb28` |
| 17 | `def` | [univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/univ.md) | 203 | `declaration-track:cc0cfc650402875e6ac61211bd45505385bf1c4e6f632b03864aff3c552259ca` |
| 18 | `def` | [insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/insert.md) | 209 | `declaration-track:0eeb2c9ab464abecfd836f7fcdb710f628095ec054c7aba0d89a6a31a83f4910` |
| 19 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/instance-source-edition-5.md) | 211 | `declaration-track:69aa45c829b648d0ffff180d76dabf42c16b28025a7fe6f0bae860f87b78508a` |
| 20 | `def` | [singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/singleton.md) | 216 | `declaration-track:c3c4dc541d18020327974daca8c626d1b6376ce6a1bb7b49433e310cae6c68b0` |
| 21 | `instance` | [instSingletonSet](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/instsingletonset.md) | 218 | `declaration-track:efdb03102d19cfba9946b8bf690403c9c812390afc8b55128c31b495359dd652` |
| 22 | `def` | [union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/union.md) | 223 | `declaration-track:254019d8205cd57091419be2cea7763b9a2bc636ac354decbc3613aab4f88c45` |
| 23 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/instance.md) | 225 | `declaration-track:10af8141240b10177b2bf5333e57cb082f0788306c0c02ac2d96268fc4427254` |
| 24 | `def` | [inter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/inter.md) | 230 | `declaration-track:b8a507b5bb80a7d61125534ae09dba6ed9e7b53f1083eb88e6e2684e513c3277` |
| 25 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 232 | `declaration-track:2e6a7cc17235d284a78bcfe6d99c8b2c5aeac17a7efce62356c10c36204749c4` |
| 26 | `def` | [compl](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/compl.md) | 237 | `declaration-track:3b5cb960ea3384f19b26fc9009d939c08bc6d998c428afa10df7150d47d5aa0e` |
| 27 | `def` | [diff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/diff.md) | 242 | `declaration-track:3141992e50459b36d2b248b93952140ca5782951250efdfa89a94ce4c9014952` |
| 28 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/instance-source-edition-7.md) | 244 | `declaration-track:91fa4a3e62058da2cad2378999fb9e165bdb7b9e7e324b6d236781dc599b367d` |
| 29 | `def` | [powerset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/powerset.md) | 247 | `declaration-track:cf836eceee33d8dcb279d14fa00f4495fb6f3bed52411f83e2ae0c6fb25fe81b` |
| 30 | `def` | [image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/image.md) | 254 | `declaration-track:fbd45ba57c2f34a6fd64cb7839bfd9a41e3e069c29d7c1a07c2d37192f66618f` |
| 31 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/instance-source-edition-8.md) | 256 | `declaration-track:ab8cc9ceb613bfdafefae0abbb68bf8d5c24afb263078fd78121664ecda3fdad` |
| 32 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/instance-source-edition-9.md) | 258 | `declaration-track:f23224e20ceb15c2d337a74472604d2f598548acd52f66847b6f8070ec5dd721` |
| 33 | `def` | [Nonempty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetDefsNamespaced.lean/declarations/nonempty.md) | 268 | `declaration-track:d28efa6105cc304c487d71175157852347914d5a6fd6e07a00941725d81b2f13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25cf13150f649e34296b893f5ec734d48e6ff7d3fb90fc7e782feb171ad3b20b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3a35aa26e7bceff5650a12168f8efd5b07e203906ca554118b75eedf53da9584.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3a35aa26e7bceff5650a12168f8efd5b07e203906ca554118b75eedf53da9584.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
