package api.maneasy.repositories;

import api.maneasy.models.ProfissionalModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface ProfissionalRepository extends JpaRepository<ProfissionalModel, UUID> {
}
