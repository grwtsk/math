# Main Namespaced Binary Matrix Logic Prime Tree Package — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a999603ac3ba4902b5d4ae006b7186d485c7b52` · SHA-256 `49a4fcce9cba443f48588dfca1494d2061de21d86e57f5900ec56d75507a6f7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryMatrixLogicPrimeTreePackage.Variant157393e3ae41352bb99b860710135ec0028bae9da357c008c6f951a2412cbd32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"157393e3ae41352bb99b860710135ec0028bae9da357c008c6f951a2412cbd32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BinaryMatrixLogicPrimeTreePackage.Variant157393e3ae41352bb99b860710135ec0028bae9da357c008c6f951a2412cbd32","mathematical_subject":"Computation.DataStructures","original_sha256":"157393e3ae41352bb99b860710135ec0028bae9da357c008c6f951a2412cbd32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Tree/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Tree.Core
import Surface.Legacy.BinaryLogicMatrix.Tree.Counting
import Surface.Legacy.BinaryLogicMatrix.Tree.Composition
import Surface.Legacy.BinaryLogicMatrix.Tree.PrimeLabels
import Surface.Legacy.BinaryLogicMatrix.Tree.EuclidInfinitude
import Surface.Legacy.BinaryLogicMatrix.Tree.Irreducible
import Surface.Legacy.BinaryLogicMatrix.Tree.OrderedPrimeNormalForm
import Surface.Legacy.BinaryLogicMatrix.Tree.TopologyPrime
import Surface.Legacy.BinaryLogicMatrix.Tree.ArithmeticShadow
import Surface.Legacy.BinaryLogicMatrix.Tree.UniqueFactorization
import Surface.Legacy.BinaryLogicMatrix.Tree.Modularity
import Surface.Legacy.BinaryLogicMatrix.Tree.StreamEncoding
import Surface.Legacy.BinaryLogicMatrix.Tree.SitePlanning


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryMatrixLogicPrimeTreePackage.Variant157393e3ae41352bb99b860710135ec0028bae9da357c008c6f951a2412cbd32

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure BinaryMatrixLogicPrimeTreePackage where
  pairingCodec? : Option PairingCodec
  primeEnumerator : PrimeEnumerator
  claimBoundary : List String

def defaultPrimeTreePackage : BinaryMatrixLogicPrimeTreePackage where
  pairingCodec? := none
  primeEnumerator := linearPrimeEnumerator
  claimBoundary := [
    "BinaryMatrixLogic is represented as a pre-symbolic binary factor-tree substrate.",
    "Raw trees preserve order and bracketing.",
    "Numeric pairing codecs are explicit certificates, not hidden assumptions."
  ]

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e63621da7e962ff871c93fa8a3e8963f0ade5fb78155354b7741c66739a226eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variantc18556bbdbd61ff3a81c51b41b4c7fcc166a6460192ebf9a7dc45897e280fd7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
