# Verification target: Decidable Eq Namespaced Public Rel Of Is Eqv Aux

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6412fdde9fc703fef0db8a8799579aaa205e88e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variant0c0ed06d405074ad4e784f866356bc0235dc3700babee39eb48560830d94f4d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6412fdde9fc703fef0db8a8799579aaa205e88e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variant0c0ed06d405074ad4e784f866356bc0235dc3700babee39eb48560830d94f4d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variant0c0ed06d405074ad4e784f866356bc0235dc3700babee39eb48560830d94f4d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Classical` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.BEq` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.BEq` — import line 21; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rel_of_isEqvAux](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/rel-of-iseqvaux.md) | 34 | `result-track:2a3ac47921fd8fb90125adee09d5f6f06c90dd802f93a970807859f812d59136` |
| 2 | `theorem` | [isEqvAux_of_rel](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/iseqvaux-of-rel.md) | 50 | `result-track:7f736a797b578ff001a4276c4842685ce660ad9dd1b7b4fc6a1eee960d3c1154` |
| 3 | `theorem` | [rel_of_isEqv](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/rel-of-iseqv.md) | 59 | `result-track:e64066017e2ba4cc2464fb65e12a785c3bb4200cd9cc3394db6b105d879aa066` |
| 4 | `theorem` | [isEqv_iff_rel](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/iseqv-iff-rel.md) | 66 | `result-track:913941cc7ae17f7125286efb6e820eaf0983fb0a7b546185f95df1b1bde03e73` |
| 5 | `theorem` | [isEqv_eq_decide](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/iseqv-eq-decide.md) | 72 | `result-track:c8356a5e075820a2c90105298597a8456cf5d8e6c18221956acbb1d09615280c` |
| 6 | `theorem` | [isEqv_toList](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/iseqv-tolist.md) | 86 | `result-track:d2790090f0258b1a9ff66e267bb06b5a37118387db10b2acbc5fc484502e65ac` |
| 7 | `theorem` | [eq_of_isEqv](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/eq-of-iseqv.md) | 89 | `result-track:7f515661a7a4f1f33232c85ba3521d275090de3ab69efcd539b0dfe1cfc943a8` |
| 8 | `theorem` | [isEqvAux_self](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/iseqvaux-self.md) | 93 | `result-track:d1efd3050ccb932b956b504d5f7869284963f8b7817e6c0ea850b1071da473b3` |
| 9 | `theorem` | [isEqv_self_beq](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/iseqv-self-beq.md) | 101 | `result-track:ae6bc9ec05859e67e8ad2cb3c3381b24c6b554a54c243f253a17500e4cc674ee` |
| 10 | `theorem` | [isEqv_self](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/iseqv-self.md) | 104 | `result-track:95ab2a8cca52edefd25a8ab7ed72859784c96f13603d603eca80afdfbfa77319` |
| 11 | `def` | [instDecidableEqImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/instdecidableeqimpl.md) | 107 | `declaration-track:ac0d75b5879d95df21a046e0cdef3ee3356760e7649e2a1e192bad670cbb0b19` |
| 12 | `instance` | [instDecidableEq](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/instdecidableeq.md) | 112 | `declaration-track:e0f67a1207c02ca76fb374d936c7be61653f6e1c2d20f7d5f084c7ef835e3961` |
| 13 | `theorem` | [instDecidableEq_csimp](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/instdecidableeq-csimp.md) | 124 | `result-track:adffbf5b65e08f4f2ac9af904c23fcb9bff3cde169a9507607b40324fdf56cc8` |
| 14 | `instance` | [instDecidableEqEmp](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/instdecidableeqemp.md) | 130 | `declaration-track:6b57584eb91091485043b47d75f47b8ce335b9e17c0b5352932c487733db7c4b` |
| 15 | `instance` | [instDecidableEmpEq](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/instdecidableempeq.md) | 138 | `declaration-track:58010c9f6507b6cbe24790885973694d97bdb16ccb9ab88ad391d95f03c17279` |
| 16 | `def` | [instDecidableEqEmpImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/instdecidableeqempimpl.md) | 144 | `declaration-track:58fbc2d7e063d8f22ad49ff2cd9c11807ed3804bfd47afc4c9784b9e5802fb9f` |
| 17 | `def` | [instDecidableEmpEqImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/instdecidableempeqimpl.md) | 148 | `declaration-track:fd2eddad9a0738c80ca447495ce08f16c5f42ced5eaccde404285abc3571a65c` |
| 18 | `theorem` | [instDecidableEqEmp_csimp](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/instdecidableeqemp-csimp.md) | 152 | `result-track:ae655f15bbe5e4974e53f0010f4813bdf0e3125c953f1ef325385de8ac561783` |
| 19 | `theorem` | [instDecidableEmpEq_csimp](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/instdecidableempeq-csimp.md) | 156 | `result-track:f446da6df6a489f2246d2bee1ee840415ef1b0601cbf19296f8dde7a7f03bfca` |
| 20 | `theorem` | [beq_eq_decide](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/beq-eq-decide.md) | 159 | `result-track:f304b94b4bd1987e80b8306cb0a4b4bcce8435ec361a21d67a070e2840e460a4` |
| 21 | `theorem` | [beq_toList](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/beq-tolist.md) | 164 | `result-track:2fd4be16b409522334a7c53c6a8d79bf0a4d4f70dc43c69809689fc5d8773b41` |
| 22 | `theorem` | [isEqv_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/iseqv-toarray.md) | 171 | `result-track:c8789beca445d395e5a67532e18e86d0a64b7085f54cc4628965965374d2d742` |
| 23 | `theorem` | [beq_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/beq-toarray.md) | 174 | `result-track:a1cb42b8bd1e503c7c1e7f70365db4388d20745ac7ee92e383d70056c116ceeb` |
| 24 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/instance.md) | 181 | `declaration-track:48d118ef914cab89a90cdb6133cb75d2a0f37a9a4188215a385678f4bd3c9f93` |
| 25 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublicRelOfIsEqvAux.lean/declarations/instance-source-edition-2.md) | 184 | `declaration-track:59113c194c86d856478ac0ead2ffeb8db0d9763cd2d7dd8072cb063e1c22c180` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=645291bde7d1eff50b76b559333df716069fa058225d4073986e75246fc07b18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variant0c0ed06d405074ad4e784f866356bc0235dc3700babee39eb48560830d94f4d2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variant0c0ed06d405074ad4e784f866356bc0235dc3700babee39eb48560830d94f4d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
