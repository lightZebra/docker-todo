package io.vsavchuk;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface TodoRepository extends JpaRepository<Todo, Long> {
	@Transactional
	void deleteByDone(boolean done);
}
