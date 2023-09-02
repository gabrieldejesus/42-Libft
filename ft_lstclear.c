/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gde-jesu <gde-jesu@student.42.rio>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/30 12:10:06 by gde-jesu          #+#    #+#             */
/*   Updated: 2023/09/02 15:09:18 by gde-jesu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*node;
	t_list	*temp;

  if (!lst)
    return ;
	node = *lst;
	while (node)
	{
		temp = node->next;
		if (del)
			del(node->content);
		free(node);
		node = temp;
	}
	*lst = NULL;
}
