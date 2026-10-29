# Verification target: Minor Order

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "886517050237d0d11fd27de10bcc1e9b098a88c8",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant0ffbf6a8a1c225f9d0bb8c9c62dbf4a0dca9d2cd71989ea5eec4c57cad14c12b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `886517050237d0d11fd27de10bcc1e9b098a88c8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant0ffbf6a8a1c225f9d0bb8c9c62dbf4a0dca9d2cd71989ea5eec4c57cad14c12b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant0ffbf6a8a1c225f9d0bb8c9c62dbf4a0dca9d2cd71989ea5eec4c57cad14c12b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Minor.Contract` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isminor.md) | 44 | `declaration-track:7ae2baeef466b87fee759e811e42a720f1800ba9c5749dcf81cf568cc4297371` |
| 2 | `lemma` | [contract_delete_isMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/contract-delete-isminor.md) | 50 | `result-track:7673d56a6265997a9415930f834947b77f30c85adf31e7227a77f3d66b05b384` |
| 3 | `lemma` | [IsMinor.exists_eq_contract_delete_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isminor-exists-eq-contract-delete-disjoint.md) | 53 | `result-track:35b8b77cfb9d4daae5c3e67e6ae57327dd07809d27366ef8b3d4995915ae322c` |
| 4 | `def` | [IsStrictMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isstrictminor.md) | 63 | `declaration-track:5729ddb900cbf1b06488e47a65ee0de873de8fb5d18314d2c4f1bc84efab160e` |
| 5 | `lemma` | [IsMinor.subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isminor-subset.md) | 68 | `result-track:045978a82657d9cf1b4314ba3f9f1fb70e01c7a1d1330744de4bbbbe1d3c90b9` |
| 6 | `lemma` | [IsMinor.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isminor-refl.md) | 72 | `result-track:56797981f9db6cce13913b923a5bd930a4a4924654f800c315c571e5b56af148` |
| 7 | `lemma` | [IsMinor.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isminor-trans.md) | 74 | `result-track:06994cd1503d132f0a7a94a3002fc89057153863999b650f80df5b5c6e931fe6` |
| 8 | `lemma` | [IsMinor.eq_of_ground_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isminor-eq-of-ground-subset.md) | 79 | `result-track:61e3c4bc8cdd82450217a457d1c17e5da2b4760383efaf5be4290b5772e20b51` |
| 9 | `lemma` | [IsMinor.antisymm](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isminor-antisymm.md) | 85 | `result-track:e8f71241444f5e2c4dcbb76e589d5579994a7cc9636d285156d007c44b20b8f3` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/instance.md) | 90 | `declaration-track:259222c831c24a3c6648b30ce3c80e0452d8831cdedd885ac76c36b237e02cce` |
| 11 | `lemma` | [IsMinor.le](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isminor-le.md) | 97 | `result-track:15dfc864b980ed2bb5949f4a3231f8ca54b3ad163d380fd8f88fb737f1840e8a` |
| 12 | `lemma` | [IsStrictMinor.lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isstrictminor-lt.md) | 99 | `result-track:b677a127cd8525fd8915617dfdbdbd79558dc8d6954075e7e0cfd25fcedd0597` |
| 13 | `lemma` | [le_eq_isMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/le-eq-isminor.md) | 102 | `result-track:a23cb1b8070fe6262f171a28798e2c46af99265fcc5841534350a20e4d44ead9` |
| 14 | `lemma` | [lt_eq_isStrictMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/lt-eq-isstrictminor.md) | 105 | `result-track:3a2549ad85317c8ec0ff16228dccfedf7e4be247eb9d7939dc2011aee564cbd9` |
| 15 | `lemma` | [isStrictMinor_iff_isMinor_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isstrictminor-iff-isminor-ne.md) | 107 | `result-track:dd0d65ea82dd2951f2029b09c165f436e043ecbe3765d347c28bcfba16c13bf9` |
| 16 | `lemma` | [IsStrictMinor.ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isstrictminor-ne.md) | 110 | `result-track:eb3252b78f6ead1beb38b133ae39e326421cd60a090a29428de954a0be3c7a92` |
| 17 | `lemma` | [isStrictMinor_irrefl](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isstrictminor-irrefl.md) | 113 | `result-track:9dff2b5864995d2fa3e7cf6f4d6c43166e7da95b7c6c41d0f5eb359a844c97d4` |
| 18 | `lemma` | [IsStrictMinor.isMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isstrictminor-isminor.md) | 116 | `result-track:cc2675316a10811d093173dd4fcc24b6fe22b28f8545d2595e95117508a83f52` |
| 19 | `lemma` | [IsStrictMinor.not_isMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isstrictminor-not-isminor.md) | 119 | `result-track:c968a93ea29e994a9a8485495b44eb2cbb4e8c239250e8d7decf7b8e67fc1a9d` |
| 20 | `lemma` | [IsStrictMinor.ssubset](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isstrictminor-ssubset.md) | 122 | `result-track:ca2d9149e5ace2c543dfcc896cbcc6a313f129b86f2be0434d92df607d7ce1b1` |
| 21 | `lemma` | [isStrictMinor_iff_isMinor_ssubset](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isstrictminor-iff-isminor-ssubset.md) | 125 | `result-track:f1bf231b7414c88d1a89a6d39b39cd15394f59c187b539f3035face8cd15989b` |
| 22 | `lemma` | [IsStrictMinor.trans_isMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isstrictminor-trans-isminor.md) | 128 | `result-track:cf24002e4d3ba40652f9a41306cf74548570b9ac4151d725e86ac49e0eb92295` |
| 23 | `lemma` | [IsMinor.trans_isStrictMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isminor-trans-isstrictminor.md) | 131 | `result-track:076647511c8c1a32a41bc267f3fe04f126426a366f9d1e7948084816492e959a` |
| 24 | `lemma` | [IsStrictMinor.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isstrictminor-trans.md) | 134 | `result-track:12caf8cc7eecf7ef02bb029267910942645b83b14fffd509e58d0d230e0d92df` |
| 25 | `lemma` | [Indep.of_isMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/indep-of-isminor.md) | 137 | `result-track:7025aa5a9bca603dd18255dd96cb08b19ca6c1c0036b74d5c366509d1a24f8d2` |
| 26 | `lemma` | [IsNonloop.of_isMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isnonloop-of-isminor.md) | 141 | `result-track:f4650b6f26fff6c0da4c8ba51cc7bf1d167fa4fa39dab9139ea12a72fc1039ad` |
| 27 | `lemma` | [Dep.of_isMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/dep-of-isminor.md) | 145 | `result-track:ec792bd4d8fbb8bec279c1b3530ccdb61df73f6c83e9ec0cdf6eb376e661dc01` |
| 28 | `lemma` | [IsLoop.of_isMinor](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/declarations/isloop-of-isminor.md) | 148 | `result-track:7b18bb1ebbff1c655c84f98e659890e327292ad6b1107ec3d641adea14ad8be5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0404e0f30d3fa9411a5c224e763cdbde3454b2b5456dadd71991da99fa84edcf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant0ffbf6a8a1c225f9d0bb8c9c62dbf4a0dca9d2cd71989ea5eec4c57cad14c12b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant0ffbf6a8a1c225f9d0bb8c9c62dbf4a0dca9d2cd71989ea5eec4c57cad14c12b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
