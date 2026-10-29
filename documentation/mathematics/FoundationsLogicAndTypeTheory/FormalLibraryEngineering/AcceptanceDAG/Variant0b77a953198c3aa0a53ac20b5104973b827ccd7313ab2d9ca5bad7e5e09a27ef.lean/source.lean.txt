import Folder.CanonicalPath.AcceptanceDAG

/-!
# Folder.Theorem.CanonicalPath.AcceptanceDAG

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports RH acceptance DAG facts.
Ontology: proof.canonical_path.acceptance_dag
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem acceptance_dag_requires_all_nodes
    (D : Folder.CanonicalPath.RHAcceptanceDAG) :
    D.allNodesProved :=
  Folder.CanonicalPath.acceptance_dag_requires_all_nodes D

theorem acceptance_dag_requires_no_contracts
    (D : Folder.CanonicalPath.RHAcceptanceDAG) :
    D.noConditionalContracts :=
  Folder.CanonicalPath.acceptance_dag_requires_no_contracts D

theorem acceptance_dag_requires_zeta_specialization
    (D : Folder.CanonicalPath.RHAcceptanceDAG) :
    D.specializesExactlyToZeta :=
  Folder.CanonicalPath.acceptance_dag_requires_zeta_specialization D

end CanonicalPath
end Theorem
end Folder
